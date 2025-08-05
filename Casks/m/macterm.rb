cask "macterm" do
  version "4.1.0"
  sha256 "48938d0d33a57de3859a6b7323e1f111e674b504aa99f422ceea1b8850ae454c"

  url "https://www.macterm.net/updates/macterm-#{version}.dmg"
  name "MacTerm"
  desc "Terminal emulator"
  homepage "https://www.macterm.net/"

  deprecate! date: "2024-10-27", because: :unmaintained

  depends_on macos: "<= :mojave"

  app "MacTerm.app"
end
