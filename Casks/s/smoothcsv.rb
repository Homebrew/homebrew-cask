cask "smoothcsv" do
  version "3.0.1"
  sha256 "ca7300571baf90529fd79b12f9741020bf6a0e47bfb7cd721bc1865da5360d8c"

  url "https://github.com/kohii/smoothcsv3/releases/download/v#{version}/SmoothCSV_#{version}_universal.dmg",
      verified: "github.com/kohii/smoothcsv3/"
  name "SmoothCSV"
  desc "CSV editor"
  homepage "https://smoothcsv.com/"

  depends_on macos: ">= :high_sierra"

  app "SmoothCSV.app"

  uninstall quit: "com.smoothcsv.desktop"

  zap trash: [
    "~/Library/Application Support/com.smoothcsv.desktop",
    "~/Library/Caches/com.smoothcsv.desktop",
    "~/Library/Logs/com.smoothcsv.desktop",
    "~/Library/WebKit/com.smoothcsv.desktop",
  ]
end
