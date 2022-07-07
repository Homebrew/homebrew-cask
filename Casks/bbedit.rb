cask "bbedit" do
  if MacOS.version <= :el_capitan
    version "12.1.6"
    sha256 "23b9fc6ef5c03cbcab041566503c556d5baf56b2ec18f551e6f0e9e6b48dc690"
  elsif MacOS.version <= :high_sierra
    version "12.6.7"
    sha256 "d0647c864268b187343bd95bfcf490d6a2388579b1f8fce64a289c65341b1144"
  elsif MacOS.version <= :mojave
    version "14.1.2"
    sha256 "d9ce7ef5976c0b8a5037599966ea3979695170b44b03987bb046d7f52af253c0"
  else
    version "14.5"
    sha256 "6bef90133bedfd23dea5d58c67845af06c50c608231edbbdb1c5c87b0a2b4a42"
  end

  url "https://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg",
      verified: "s3.amazonaws.com/BBSW-download/"
  name "BBEdit"
  desc "Text, code, and markup editor"
  homepage "https://www.barebones.com/products/bbedit/"

  livecheck do
    url "http://versioncheck.barebones.com/BBEdit.xml"
    regex(/BBEdit[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "BBEdit.app"
  binary "#{appdir}/BBEdit.app/Contents/Helpers/bbedit_tool", target: "bbedit"
  binary "#{appdir}/BBEdit.app/Contents/Helpers/bbdiff"
  binary "#{appdir}/BBEdit.app/Contents/Helpers/bbfind"
  binary "#{appdir}/BBEdit.app/Contents/Helpers/bbresults"
  manpage "#{appdir}/BBEdit.app/Contents/Resources/bbedit.1"
  manpage "#{appdir}/BBEdit.app/Contents/Resources/bbdiff.1"
  manpage "#{appdir}/BBEdit.app/Contents/Resources/bbfind.1"
  manpage "#{appdir}/BBEdit.app/Contents/Resources/bbresults.1"

  zap trash: [
    "~/Library/Application Support/BBEdit",
    "~/Library/BBEdit",
    "~/Library/Caches/com.barebones.bbedit",
    "~/Library/Preferences/com.barebones.bbedit.plist",
  ]
end
