cask "rsyncui" do
  version "1.8.9"
  sha256 "20bbcd5f6714ffe50f377bbb88531a1b975448b1f5517e067d4de0b16e45dc84"

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
