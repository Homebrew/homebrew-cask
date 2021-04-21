cask "fs-uae" do
  version "3.0.5"
  sha256 "dd91e365cb066f25267af620d138ad96ca171a192c704e9132b39ba0b4ce74c9"

  url "https://fs-uae.net/stable/#{version}/FS-UAE-Suite_#{version}_macOS_x86-64.dmg"
  name "FS-UAE"
  desc "Amiga emulator"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/stable/latest-macosx"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)/i)
  end

  app "FS-UAE Arcade.app"
  app "FS-UAE Launcher.app"
end
