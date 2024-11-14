cask "etrecheckpro" do
  version "6.8.7"
  sha256 :no_check

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"
  name "EtreCheck"
  desc "Utility to finds and fix problems on computer systems"
  homepage "https://etrecheck.com/"

  livecheck do
    url "https://cdn.etrecheck.com/EtreCheckProUpdates.plist"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  depends_on macos: ">= :high_sierra"

  app "EtreCheckPro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.etresoft.etrecheck*.sfl*",
    "~/Library/Caches/com.etresoft.EtreCheck*",
    "~/Library/Preferences/com.etresoft.EtreCheck*.plist",
    "~/Library/WebKit/com.etresoft.EtreCheck*",
  ]
end
