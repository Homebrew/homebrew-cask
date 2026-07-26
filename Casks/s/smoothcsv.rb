cask "smoothcsv" do
  version "3.23.2"
  sha256 "83b133d691776fb9d81e352762a5aa2420509bc493bf5283bf94548b8d251d00"

  url "https://github.com/kohii/smoothcsv3/releases/download/v#{version}/SmoothCSV_#{version}_universal.dmg",
      verified: "github.com/kohii/smoothcsv3/"
  name "SmoothCSV"
  desc "CSV editor"
  homepage "https://smoothcsv.com/"

  depends_on :macos

  app "SmoothCSV.app"
  binary "#{appdir}/SmoothCSV.app/Contents/MacOS/smoothcsv-cli", target: "smoothcsv"

  uninstall quit: "com.smoothcsv.desktop"

  zap trash: [
    "~/Library/Application Support/com.smoothcsv.desktop",
    "~/Library/Caches/com.smoothcsv.desktop",
    "~/Library/Logs/com.smoothcsv.desktop",
    "~/Library/WebKit/com.smoothcsv.desktop",
  ]
end
