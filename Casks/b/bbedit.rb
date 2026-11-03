cask "bbedit" do
  version "16.1"
  sha256 "8d1de3bb778c71449dc53b38c8e1aab658795175e773953f1adce49df4716dc4"

  url "https://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  name "BBEdit"
  desc "Text, code, and markup editor"
  homepage "https://www.barebones.com/products/bbedit/"

  livecheck do
    url "https://versioncheck.barebones.com/BBEdit.xml"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='SUFeedEntryShortVersionString']").map { |item| item.next_element&.text&.strip }
    end
  end

  auto_updates true
  conflicts_with cask: "bbedit@14"
  depends_on macos: :sonoma

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
    "~/Library/Application Scripts/com.barebones.bbedit",
    "~/Library/Application Support/BBEdit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.barebones.bbedit.sfl*",
    "~/Library/BBEdit",
    "~/Library/Caches/com.barebones.bbedit",
    "~/Library/Containers/com.barebones.bbedit",
    "~/Library/Preferences/com.barebones.bbedit.plist",
  ]
end
