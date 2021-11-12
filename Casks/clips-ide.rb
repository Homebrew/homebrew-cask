cask "clips-ide" do
  version "6.40"
  sha256 "fc76fc5cc97f2d6fc00a72f43983765adb500d8c249cd75b5fdf57f799c3c895"

  url "https://downloads.sourceforge.net/clipsrules/clips_macos_executable_#{version.no_dots}.dmg",
      verified: "downloads.sourceforge.net/clipsrules/"
  name "clips-ide"
  desc "Tool for building expert systems"
  homepage "http://www.clipsrules.net/"

  app "CLIPS IDE.app"
end
