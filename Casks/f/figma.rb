cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.2.10"
  sha256 arm:   "f70305b37ece1a53a875c227c155ac0d8d4a909f675a764bfa6b2ea70fcc548b",
         intel: "132ffcdfc513933b81e38a2986634745ff91e81a5e06bd65a46b4f671f3d71c8"

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
