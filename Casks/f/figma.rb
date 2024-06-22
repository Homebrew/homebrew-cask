cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.1.12"
  sha256 arm:   "12ef5616a38c31532df959e383178b7e4dde6c441793b457be48155e9bfe66a6",
         intel: "c1548af8fb947ee7db176084e8db2a6ebfba1dc7da08627190889bfb18afb0d1"

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
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
