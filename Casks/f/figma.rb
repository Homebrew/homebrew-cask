cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.9.10"
  sha256 arm:   "61d799ebeb25985abf05de67b66f3fd522ac31bc5ff91965a972339e85bd3ec6",
         intel: "a2d1f048e46878721f7ea36834ce5c38102ebf9da762c2434b9d2fbd4986af1e"

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
