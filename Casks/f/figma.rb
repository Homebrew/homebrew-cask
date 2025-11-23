cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.10.7"
  sha256 arm:   "1efbded052eb3eb29e6db9a1893bd1a67488a0f8f472b7592aee1dd0b58b8eb3",
         intel: "f29d36e818bcae9f5c85bc4f68ea0755efe5840e3c9270b52aa9546eef4402dc"

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
