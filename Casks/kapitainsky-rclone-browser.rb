cask "kapitainsky-rclone-browser" do
  version "1.8.0,a0b66c6"
  sha256 "44465643aa1a8b87ff9d68410567045674e3d979e789f8b0bd2953e1ebf7e715"

  url "https://github.com/kapitainsky/RcloneBrowser/releases/download/#{version.before_comma}/rclone-browser-#{version.before_comma}-#{version.after_comma}-macos.dmg"
  appcast "https://github.com/kapitainsky/RcloneBrowser/releases.atom"
  name "Rclone Browser"
  homepage "https://github.com/kapitainsky/RcloneBrowser"

  depends_on formula: "rclone"

  app "Rclone Browser.app"
end
