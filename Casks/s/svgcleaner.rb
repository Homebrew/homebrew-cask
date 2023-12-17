cask "svgcleaner" do
  version "0.9.5"
  sha256 "d1f3098ad5008a8f727d53e764239844db063a0a9cc2aa21ac0b0bdef6011335"

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  name "SVG Cleaner"
  desc "Tool to clean up SVG files by removing unnecessary data"
  homepage "https://github.com/RazrFalcon/svgcleaner-gui/"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with formula: "svgcleaner"

  app "SVGCleaner.app"
  binary "#{appdir}/SVGCleaner.app/Contents/MacOS/svgcleaner-cli", target: "svgcleaner"

  zap trash: [
    "~/Library/Preferences/com.svgcleaner.svgcleaner.plist",
    "~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState",
  ]
end
