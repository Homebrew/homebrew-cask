cask "bbedit@14" do
  version "14.6.9"
  sha256 "8707901de03589c4b8cc3d0c35432c9c0c007ee30e53a654b997c5b3f9d4ff24"

  url "https://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg",
      verified: "s3.amazonaws.com/BBSW-download/"
  name "BBEdit"
  desc "Text, code, and markup editor"
  homepage "https://www.barebones.com/products/bbedit/"

  livecheck do
    url "https://versioncheck.barebones.com/BBEdit.xml"
    regex(/^v?(#{version.major}(?:\.\d+)*)$/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//key[text()='SUFeedEntryShortVersionString']").map { |item| item.next_element&.text&.strip }
         .grep(regex)
    end
  end

  auto_updates true
  conflicts_with cask: "bbedit"
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
