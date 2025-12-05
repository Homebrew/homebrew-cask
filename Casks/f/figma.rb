cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.10.8"
  sha256 arm:   "890114f864d386a68d75f5e3effe38f7ac7c5c1dee3e4b8f10fc98fb43171e9b",
         intel: "96b8ebe41103483b95be40aaa2f43da74acbd2c657588186e81f0f2774525175"

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
