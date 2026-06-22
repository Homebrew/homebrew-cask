cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.9"
  sha256 arm:   "b3fb9f51dfdd8acbb116a1be93e0bc572438a96a84f42f014708485eac3e4f5c",
         intel: "27537bb8efce69fb072ca0c56eb02a15abaffa35a5cf0791db9cde092cd8f362"

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
  depends_on :macos

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
