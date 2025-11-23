cask "musaicfm" do
  version "1.2.6"
  sha256 "d22162103677565da7c009ff0539a9f51d91c13dcb26ee76ff5710758f93dbe7"

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  name "MusaicFM Screensaver"
  desc "Screensaver displaying artwork based on Spotify or Last.fm profile data"
  homepage "https://github.com/docterd/MusaicFM"

  screen_saver "MusaicFM.saver"

  zap trash: "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/com.obrhoff.musaicfm.*.plist"
end
