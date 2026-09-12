cask "smoothcsv" do
  version "3.25.0"
  sha256 "90d934991c325d39aa6e0d4f332db56c5b9ef7adbdf96f50a65682f0bdfea8e7"

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
