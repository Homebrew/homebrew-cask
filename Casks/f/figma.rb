cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.5.6"
  sha256 arm:   "ad5e572b2eefeb1eb2bb1564f001d6a38261ba759c9fdc708df1b970a511a223",
         intel: "6609a0285ff9d024cab9cad1d3a6a34dd94126163c595d4224150c3fb367cb4b"

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
