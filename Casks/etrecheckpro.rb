cask "etrecheckpro" do
  version "6.5.6"
  sha256 :no_check

  url "https://cdn.etrecheck.com/EtreCheckPro.zip"
  name "EtreCheck"
  desc "Utility to finds and fix problems on computer systems"
  homepage "https://etrecheck.com/"

  livecheck do
    url "https://etrecheck.com/details"
    regex(/Changes\sin\sEtreCheckPro\sversion\s(\d+(?:\.\d+)+)/i)
  end

  app "EtreCheckPro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.etresoft.etrecheck*.sfl*",
    "~/Library/Caches/com.etresoft.EtreCheck*",
    "~/Library/Preferences/com.etresoft.EtreCheck*.plist",
    "~/Library/WebKit/com.etresoft.EtreCheck*",
  ]
end
