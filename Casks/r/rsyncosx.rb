cask "rsyncosx" do
  version "6.8.0"
  sha256 "18ea590825ec6901b3df1cde7209cbaec8faa287a00539ad299af1f0ec9f41b7"

  url "https://github.com/rsyncOSX/RsyncOSX_archived/releases/download/v#{version}/RsyncOSX.#{version}.dmg"
  name "RsyncOSX"
  desc "GUI for rsync"
  homepage "https://github.com/rsyncOSX/RsyncOSX_archived"

  deprecate! date: "2024-08-25", because: :discontinued

  depends_on macos: ">= :big_sur"

  app "RsyncOSX.app"

  zap trash: [
    "~/Library/Caches/no.blogspot.RsyncOSX",
    "~/Library/Preferences/no.blogspot.RsyncOSX.plist",
    "~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState",
  ]
end
