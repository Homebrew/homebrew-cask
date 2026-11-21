cask "rsyncui" do
  version "3.5.0"
  sha256 "423c278da39c3e71ac8539f175ee009fd8d10946112b00f78f60e9922b81a846"

  url "https://github.com/rsyncOSX/RsyncUI/releases/download/v#{version}/RsyncUI.#{version}.dmg"
  name "RsyncUI"
  desc "GUI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncUI"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  depends_on macos: :sonoma

  app "RsyncUI.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncUI",
    "~/Library/Preferences/no.blogspot.RsyncUI.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncUI.savedState",
  ]
end
