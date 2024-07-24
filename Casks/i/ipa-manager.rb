cask "ipa-manager" do
  version "2.3.2"
  sha256 "d48a1dcfbe3b3c1c17fc35353f84ff381791da0839f1ece1b991499276c5ef5f"

  url "https://www.blugs.com/Downloads/IPAPalette_#{version}.dmg"
  name "IPA Palette"
  desc "International Phonetic Alphabet input method"
  homepage "https://www.blugs.com/IPA/"

  deprecate! date: "2024-07-17", because: :discontinued

  auto_updates true

  app "IPA Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.blugs.ipamanager.sfl*",
    "~/Library/Caches/com.blugs.IPAManager",
    "~/Library/Preferences/com.blugs.IPAManager.plist",
  ]

  caveats do
    requires_rosetta
  end
end
