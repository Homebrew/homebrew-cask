cask "kapitainsky-rclone-browser" do
  version "1.8.0,a0b66c6"
  sha256 "44465643aa1a8b87ff9d68410567045674e3d979e789f8b0bd2953e1ebf7e715"

  url "https://github.com/kapitainsky/RcloneBrowser/releases/download/#{version.csv.first}/rclone-browser-#{version.csv.first}-#{version.csv.second}-macos.dmg"
  name "Rclone Browser"
  desc "GUI for rclone"
  homepage "https://github.com/kapitainsky/RcloneBrowser"

  deprecate! date: "2024-07-17", because: :unmaintained

  depends_on formula: "rclone"

  app "Rclone Browser.app"

  caveats do
    requires_rosetta
  end
end
