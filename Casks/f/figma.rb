cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.1.2"
  sha256 arm:   "0cbc864988bd26448c8e138b12bb163b6dad4bf46e0b8d36c8e144dd1a721602",
         intel: "ab74047ff708a56f3959e988ec2234c853fbad379a86776ad48385c5da42fca7"

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
