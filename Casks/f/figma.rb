cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.0.4"
  sha256 arm:   "3aa8b5e9ff2793e320114da90c4b894cb891d0182fab94a81de1d99a421e805e",
         intel: "f6e7ba80bbb936258081d8faa752fa1b9e97fcc748ba5844b6a417c298a85ac4"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json?localVersion=#{version}"
    strategy :json do |json|
      json["version"]
    end
  end

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
