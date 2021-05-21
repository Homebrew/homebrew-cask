cask "figma" do
  version "98.8.0"
  sha256 "39e2c3984eb06b7e45c2d9b9230148147c863110d238121da985d214ac19b971"

  url "https://desktop.figma.com/mac/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/mac/RELEASE.json"
    strategy :page_match
    regex(%r{/Figma-(\d+(?:\.\d+)*)\.zip}i)
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
