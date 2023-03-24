cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.7.103"
  sha256 arm:   "8c4e28d7d9d6ae08465d060c0793a9733ba0f43e31a88b9f9e4f541b51814be4",
         intel: "39ec10b75605c9c1839ce6bed4f84c4b7e523f8b991201e7bcd5c9cb6df05d58"

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
