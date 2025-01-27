cask "clips-ide" do
  version "6.4.2"
  sha256 "48dbe73f5e91e5941648df5c9636717b858728953a98311a000927e6a91db223"

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
