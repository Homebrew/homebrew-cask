cask "rsyncui" do
  version "2.3.0"
  sha256 "edcffc415189028559d269191f52b7228ed7e5656aaf6828b9001256f76311b4"

  url "https://github.com/rsyncOSX/RsyncUI/releases/download/v#{version}/RsyncUI.#{version}.dmg"
  name "RsyncUI"
  desc "GUI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncUI"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "RsyncUI.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncUI",
    "~/Library/Preferences/no.blogspot.RsyncUI.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncUI.savedState",
  ]
end
