cask "rsyncui" do
  version "1.5.0"
  sha256 "2476f53146bc955eebd039b7155ca2b296badb358dabdd80784fdbe908de9b79"

  url "https://github.com/rsyncOSX/RsyncUI/releases/download/v#{version}/RsyncUI.#{version}.dmg"
  name "RsyncUI"
  desc "GUI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncUI"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "RsyncUI.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncUI",
    "~/Library/Preferences/no.blogspot.RsyncUI.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncUI.savedState",
  ]
end
