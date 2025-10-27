cask "smoothcsv" do
  version "3.7.1"
  sha256 "5ebd61e8928d94e1d25391dc830fa8f86bef736a25b4eb625be5a9794d1ec7c1"

  url "https://github.com/kohii/smoothcsv3/releases/download/v#{version}/SmoothCSV_#{version}_universal_darwin.dmg",
      verified: "github.com/kohii/smoothcsv3/"
  name "SmoothCSV"
  desc "CSV editor"
  homepage "https://smoothcsv.com/"

  app "SmoothCSV.app"

  uninstall quit: "com.smoothcsv.desktop"

  zap trash: [
    "~/Library/Application Support/com.smoothcsv.desktop",
    "~/Library/Caches/com.smoothcsv.desktop",
    "~/Library/Logs/com.smoothcsv.desktop",
    "~/Library/WebKit/com.smoothcsv.desktop",
  ]
end
