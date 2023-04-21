cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.8.5"
  sha256 arm:   "90b1c21cad1ad912824e55c3b1c48a05abaa81afe89a7a855c70c4391569a518",
         intel: "2c0d9f30d7d6319079b40e9427f606b5d48d4f9ce8c2f040fa1a0ee23ce51f00"

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
