cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.1.16"
  sha256 arm:   "1d9c19d02271ee27b3d25f0103163e35520985d56dd33624e363d0b2e69b5878",
         intel: "3dc700f8f2427725e9076dbd9d977cf4ff2fb3272e52abb17b331a85efaba055"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
