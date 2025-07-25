cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.6.5"
  sha256 arm:   "bbd7cd7cd9e37bbfa2d667913aca36144e927aea8083c5bb65d331c651aa08f3",
         intel: "033100c997171f4ddd44c387279affffab51558827f1b7947039ca7e2eba1f53"

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

  auto_updates true
  depends_on macos: ">= :sierra"

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
