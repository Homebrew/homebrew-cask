cask "krisp" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "64"

  version "3.17.6"
  sha256 arm:   "09067a8a1401e9eaffa3edf214402f0a0e13f21c76d56609ff6524cfb83b4f89",
         intel: "637d1bea148c7362d1ea8f34c43c8e3620baaef6d08fd7af122d7f63baa31424"

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
