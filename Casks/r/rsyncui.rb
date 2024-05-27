cask "rsyncui" do
  version "1.9.1"
  sha256 "1eb7a7eb643d4ef3f8f862dc6bf2b7a06fadec3643facdb43b1471ea9c94ea10"

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
