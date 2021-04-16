cask "figma" do
  version "97.7.0"
  sha256 "af7cbcbd8e8d6a2c61d3501a253d698b228b04c977a48ecc8308793fa08bb31c"

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
