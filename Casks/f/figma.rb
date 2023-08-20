cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.12.2"
  sha256 arm:   "10777964409d8a8cca96ce835d4988a890fb7125155dd95479311a99920ca1a9",
         intel: "3ceac5b9f27e7118de07ae508e68247d8596e4a4ba50bc1213ce2cefc507e1ac"

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
