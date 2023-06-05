cask "archaeology" do
  version "1.0.1,87.1"
  sha256 :no_check

  url "https://www.mothersruin.com/software/downloads/Archaeology.dmg"
  name "Archaeology"
  desc "Tool for digging into binary files"
  homepage "https://www.mothersruin.com/software/Archaeology/"

  livecheck do
    url "https://www.mothersruin.com/software/Archaeology/data/ArchaeologyVersionInfo.plist"
    regex(/CFBundleShortVersionString.*?\n.*?(\d+(?:\.\d+)*).*?\n.*?CFBundleVersion.*?\n.*?(\d+(?:\.\d+)*)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :monterey"

  app "Archaeology.app"
  binary "#{appdir}/Archaeology.app/Contents/MacOS/trowel"

  zap trash: [
    "~/Library/Application Scripts/com.mothersruin.Archaeology",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.archaeology.sfl*",
    "~/Library/Containers/com.mothersruin.Archaeology",
  ]
end
