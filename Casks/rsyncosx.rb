cask "rsyncosx" do
  version "6.7.2"
  sha256 "b389b1f059263a5e66a2f4cb132f3ea816a2f149f3d97e351003840115b7a931"

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.#{version}.dmg"
  name "RsyncOSX"
  desc "GUI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncOSX"

  depends_on macos: ">= :big_sur"

  app "RsyncOSX.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncOSX",
    "~/Library/Preferences/no.blogspot.RsyncOSX.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState",
  ]
end
