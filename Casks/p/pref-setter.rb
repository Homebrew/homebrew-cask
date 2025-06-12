cask "pref-setter" do
  version "2.0"
  sha256 :no_check

  url "http://www.nightproductions.net/downloads/prefsetter.zip"
  name "Pref Setter"
  desc "Edit plist files"
  homepage "http://www.nightproductions.net/prefsetter.html"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-07-16", because: "is 32-bit only"

  depends_on macos: "<= :mojave"

  app "Pref Setter/Pref Setter.app"
end
