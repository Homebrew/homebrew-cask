cask "save-hollywood" do
  version "2.5"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/SaveHollywood.dmg"
  name "SaveHollywood Screensaver"
  desc "Screen saver for custom video files"
  homepage "http://s.sudre.free.fr/Software/SaveHollywood/about.html"

  livecheck do
    url "http://s.sudre.free.fr/Software/SaveHollywood/release_notes.html"
    strategy :page_match
    regex(/Release_notes_Version.*?(\d+(?:\.\d+)*)/i)
  end

  screen_saver "SaveHollywood.saver"
end
