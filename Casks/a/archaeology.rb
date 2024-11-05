cask "archaeology" do
  version "1.2,155"
  sha256 :no_check

  url "https://www.mothersruin.com/software/downloads/Archaeology.dmg"
  name "Archaeology"
  desc "Tool for digging into binary files"
  homepage "https://www.mothersruin.com/software/Archaeology/"

  livecheck do
    url "https://www.mothersruin.com/software/Archaeology/data/ArchaeologyVersionInfo.plist"
    strategy :xml do |xml|
      short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
      version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text
      next if short_version.blank? || version.blank?

      "#{short_version.strip},#{version.strip}"
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
