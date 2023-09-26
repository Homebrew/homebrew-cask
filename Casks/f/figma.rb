cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.13.3"
  sha256 arm:   "3dcec2431ba58fc4adba2ba27bce7b435932ad99bcf531e04e4b00930742e752",
         intel: "feae06da0409b16f55ce54a3a1a9560ac0f71cae2df60f61b6c94f5324834fbc"

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
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
