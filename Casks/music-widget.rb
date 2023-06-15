cask "music-widget" do
  version "1.24"
  sha256 :no_check

  url "https://marioaguzman.github.io/musicwidget/updater/Music%20Widget.zip"
  name "Music Widget"
  desc "Replica of the iTunes widget for Dashboard"
  homepage "https://marioaguzman.github.io/musicwidget/"

  livecheck do
    url "https://marioaguzman.github.io/musicwidget/updater/musicwidgetappcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Music Widget.app"

  zap trash: "~/Library/Preferences/com.marioaguzman.Music-Widget.plist"
end
