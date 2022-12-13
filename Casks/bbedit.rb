cask "bbedit" do
  version "14.6.2"
  sha256 "e5805e4b38fb3e27c006cf69f6d759637349f02799cf4963dd61969000f49cba"

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
  depends_on macos: ">= :catalina"

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
