cask "etrecheckpro" do
  version "6.4.3,6E010"
  sha256 :no_check

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"
  name "EtreCheck"
  desc "Utility to finds and fix problems on computer systems"
  homepage "https://etrecheck.com/"

  livecheck do
    skip "No version information available"
  end

  app "EtreCheckPro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.etresoft.etrecheck*.sfl*",
    "~/Library/Caches/com.etresoft.EtreCheck*",
    "~/Library/Preferences/com.etresoft.EtreCheck*.plist",
    "~/Library/WebKit/com.etresoft.EtreCheck*",
  ]
end
