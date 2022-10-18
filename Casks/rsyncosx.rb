cask "rsyncosx" do
  version "6.7.4"
  sha256 "4291ad4b1ea22822ddb552e1d57c7599706f6f669057436c7f56f0dd8a74ebc7"

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
