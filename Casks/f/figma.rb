cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.5.6"
  sha256 arm:   "d8b869dee0105ac5c42d2fb3b2f00397be5e2192a3c98d7dca9f6aebd6ddab12",
         intel: "e2ad066c156ececd0b59bdc8f6ab5d369ac3ce50016887cb229cbcaff5de7c4b"

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
