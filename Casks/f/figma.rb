cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.15.15"
  sha256 arm:   "f1a3311ab2a0e2a5953839706957c47c0209e9c32beae8ae8bf84c07744d705a",
         intel: "3999ea790c35de970e6ee3d427383940594c7e48294aee49d14314bff8c5c3d4"

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
