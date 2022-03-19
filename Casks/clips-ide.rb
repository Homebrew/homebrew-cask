cask "clips-ide" do
  version "6.40"
  sha256 "fc76fc5cc97f2d6fc00a72f43983765adb500d8c249cd75b5fdf57f799c3c895"

  url "https://downloads.sourceforge.net/clipsrules/clips_macos_executable_#{version.no_dots}.dmg",
      verified: "downloads.sourceforge.net/clipsrules/"
  name "CLIPS IDE"
  desc "Tool for building expert systems"
  homepage "http://www.clipsrules.net/"

  livecheck do
    url "https://sourceforge.net/projects/clipsrules/files/latest/download"
    strategy :header_match
    regex(%r{/CLIPS/(\d+(?:\.\d+)+)/}i)
  end

  depends_on macos: ">= :el_capitan"

  app "CLIPS IDE.app"

  zap trash: [
    "~/Library/Preferences/com.SSoP.CLIPSIDE.plist",
    "~/Library/Saved Application State/com.SSoP.CLIPSIDE.savedState",
  ]
end
