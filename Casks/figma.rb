cask "figma" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "107.0.0"

  if Hardware::CPU.intel?
    sha256 "3ba98b22cf8502c16b98c28a52eef81c1233ea943e2a5c4bfa62e0435b2b698c"
  else
    sha256 "4159239bcb09a581d1226fe5bcef0dc9a64b4c53e6fdfae6016f9ae6da2046b3"
  end

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
