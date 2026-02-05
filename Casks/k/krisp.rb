cask "krisp" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "64"

  version "3.10.5"
  sha256 arm:   "ed83102385544dc69533e29d49aa3d188301f84a3d277be903a04c6a06c128f8",
         intel: "e4b7e56565ba1dabc4083b3588e9f524327d72092961db2c8122ac3767ac0fef"

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

  pkg "krisp_#{version}_#{arch}.pkg"

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
    "~/Library/Caches/ai.krisp.krispMac",
    "~/Library/Containers/ai.krisp.krispMac.LaunchHelper",
    "~/Library/HTTPStorages/ai.krisp.krispMac.*",
    "~/Library/LaunchAgents/ai.krisp.krispMac.cameraAssistant.plist",
    "~/Library/Preferences/ai.krisp.krispMac.plist",
  ]
end
