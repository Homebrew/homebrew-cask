cask "nifty-file-lists" do
  version "1.25"
  sha256 :no_check

  url "https://www.publicspace.net/download/NiftyFileLists.zip"
  name "Nifty File Lists"
  desc "Extract file metadata into exportable tables"
  homepage "https://www.publicspace.net/NiftyFileLists/"

  livecheck do
    url "https://www.publicspace.net/app/niftyfilelists.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Nifty File Lists.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.publicspace.niftyfilelists.sfl*",
    "~/Library/HTTPStorages/net.publicspace.niftyfilelists",
    "~/Library/HTTPStorages/net.publicspace.niftyfilelists.binarycookies",
    "~/Library/Preferences/net.publicspace.niftyfilelists.plist",
    "~/Library/Saved Application State/net.publicspace.niftyfilelists.savedState",
  ]
end
