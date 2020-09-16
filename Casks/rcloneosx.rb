cask "rcloneosx" do
  version "2.2.5"
  sha256 "dc44945e81c66ce9238212a4878cb35c507d364069e2361cd76b333bf0e0ab0c"

  url "https://github.com/rsyncOSX/rcloneosx/releases/download/v#{version}/rcloneosx.#{version}.dmg"
  appcast "https://github.com/rsyncOSX/rcloneosx/releases.atom"
  name "RcloneOSX"
  desc "GUI for rclone"
  homepage "https://github.com/rsyncOSX/rcloneosx"

  depends_on formula: "rclone"

  app "RcloneOSX.app"
end
