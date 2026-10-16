cask "krisp" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "64"

  version "3.18.3"
  sha256 arm:   "d9366087c479d4d633540d5ff7604b9b5c361326cc0083724b7afa2aba68e9e4",
         intel: "3ac1fb5373c573e6a2fce88be645f70e05271f35c8e48b64a5ae63cf209cf373"

  url "https://cdn.krisp.ai/mp/mn/#{version.major_minor}/mac/Krisp_#{version}_#{arch}.pkg"
  name "Krisp"
  desc "Noise cancelling application"
  homepage "https://krisp.ai/"

  livecheck do
    url "https://api.krisp.ai/v2/download/mac?package=package_#{livecheck_arch}"
    regex(%r{/Krisp[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg}i)
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  pkg "Krisp_#{version}_#{arch}.pkg"

  uninstall launchctl: [
              "ai.krisp.krispMac*",
              "krisp",
            ],
            quit:      "ai.krisp.krispMac",
            pkgutil:   "ai.krisp.krispMac*",
            delete:    "/Applications/krisp.app"

  zap trash: [
    "~/Library/Application Scripts/ai.krisp.krispMac.LaunchHelper",
    "~/Library/Application Support/ai.krisp.krispMac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.krisp.krispmac.sfl*",
    "~/Library/Application Support/krisp",
    "~/Library/Caches/ai.krisp.krispMac",
    "~/Library/Containers/ai.krisp.krispMac.LaunchHelper",
    "~/Library/HTTPStorages/ai.krisp.krispMac.*",
    "~/Library/LaunchAgents/ai.krisp.krispMac.cameraAssistant.plist",
    "~/Library/LaunchAgents/krisp.plist",
    "~/Library/Preferences/ai.krisp.krispMac.plist",
  ]
end
