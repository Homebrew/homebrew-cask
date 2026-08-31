cask "smoothcsv" do
  version "3.24.0"
  sha256 "d558378a3e6ce31192ab2668fc43e25670f1f563af55c942b2d4f48e723bf898"

  url "https://github.com/kohii/smoothcsv3/releases/download/v#{version}/SmoothCSV_#{version}_universal.dmg"
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
