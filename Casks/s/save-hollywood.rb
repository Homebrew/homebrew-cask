cask "save-hollywood" do
  version "2.5"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/SaveHollywood.dmg"
  name "SaveHollywood Screensaver"
  desc "Screen saver for custom video files"
  homepage "http://s.sudre.free.fr/Software/SaveHollywood/about.html"

  # Artifact not available over HTTPS
  disable! date: "2025-12-23", because: :no_longer_meets_criteria

  screen_saver "SaveHollywood.saver"

  # No zap stanza required
end
