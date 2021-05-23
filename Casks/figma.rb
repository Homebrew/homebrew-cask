cask "figma" do
  version "98.11.0"
  sha256 "e9899d8dafdb752414c8fe0e070d6f81b32bc713f220618b4fc90b380e345a72"

  url "https://desktop.figma.com/mac/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/mac/RELEASE.json"
    regex(%r{/Figma[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
