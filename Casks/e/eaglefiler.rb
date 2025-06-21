cask "eaglefiler" do
  version "1.9.17"
  sha256 "4c7cc071ffc8ea6ef3b9d46eaeb479d8b3135ebd04827ebf074b04b789faedf2"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name "EagleFiler"
  desc "Organise files, archive e-mails, save Web pages and notes, search everything"
  homepage "https://c-command.com/eaglefiler/"

  livecheck do
    url "https://c-command.com/versions.plist"
    strategy :xml do |xml|
      item = xml.elements["//key[text()='com.c-command.EagleFiler']"]&.next_element
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "EagleFiler.app"

  zap trash: [
    "~/Library/Application Scripts/com.c-command.EagleFiler.EagleFilerShare",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.c-command.eaglefiler.sfl*",
    "~/Library/Application Support/EagleFiler",
    "~/Library/Caches/com.c-command.EagleFiler",
    "~/Library/Containers/com.c-command.EagleFiler.EagleFilerShare",
    "~/Library/HTTPStorages/com.c-command.EagleFiler",
    "~/Library/Logs/EagleFiler",
    "~/Library/PDF Services/Save PDF to EagleFiler",
    "~/Library/Preferences/com.c-command.EagleFiler.plist",
    "~/Library/Saved Application State/com.c-command.EagleFiler.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
