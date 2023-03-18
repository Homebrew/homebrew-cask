cask "clips-ide" do
  version "6.40"
  sha256 "fc76fc5cc97f2d6fc00a72f43983765adb500d8c249cd75b5fdf57f799c3c895"

  url "https://downloads.sourceforge.net/clipsrules/clips_macos_executable_#{version.no_dots}.dmg",
      verified: "downloads.sourceforge.net/clipsrules/"
  name "CLIPS IDE"
  desc "Tool for building expert systems"
  homepage "https://www.clipsrules.net/"

  livecheck do
    url "https://sourceforge.net/projects/clipsrules/files/latest/download"
    regex(%r{/CLIPS/(\d+(?:\.\d+)+)/}i)
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "CLIPS IDE.app"

  zap trash: [
    "~/Library/Preferences/com.SSoP.CLIPSIDE.plist",
    "~/Library/Saved Application State/com.SSoP.CLIPSIDE.savedState",
  ]
end
