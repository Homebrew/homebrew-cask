cask "rcloneosx" do
  version "2.2.1"
  sha256 "38d1f45614e6b4541e31eaafdf7126178dbb3de6ef8389efe1bb13ee846078d7"

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/rcloneosx.#{version}.dmg"
  appcast "https://github.com/rsyncOSX/rcloneosx/releases.atom"
  name "RcloneOSX"
  homepage "https://github.com/rsyncOSX/rcloneosx"

  depends_on formula: "rclone"

  app "RcloneOSX.app"
end
