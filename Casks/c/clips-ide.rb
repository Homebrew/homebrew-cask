cask "clips-ide" do
  version "6.4.1"
  sha256 "aa5b0326c378fe4a798eca91005fc221160f9915de1f134f95fc164c5c4ea008"

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

  depends_on macos: ">= :mojave"

  app "CLIPS IDE.app"

  zap trash: [
    "~/Library/Preferences/com.SSoP.CLIPSIDE.plist",
    "~/Library/Saved Application State/com.SSoP.CLIPSIDE.savedState",
  ]
end
