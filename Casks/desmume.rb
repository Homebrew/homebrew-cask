cask "desmume" do
  version "0.9.13"
  sha256 "d42e4bbf8f96b6bfdb3c8be6cf469b606a3b105352460636b1051b8dd0365ebc"

  url "https://github.com/TASEmulators/desmume/releases/download/release_#{version.tr(".","_")}/desmume-#{version}-macOS.dmg"
      verified: "github.com/TASEmulators/desmume/"
  name "DeSmuME"
  desc "Nintendo DS emulator"
  homepage "https://desmume.org/"

  app "DeSmuME.app"

  zap trash: [
    "~/Library/Application Support/DeSmuME",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.desmume.desmume.sfl*",
    "~/Library/Saved Application State/org.desmume.DeSmuME.savedState",
    "~/Library/Preferences/org.desmume.DeSmuME.plist",
  ]
end
