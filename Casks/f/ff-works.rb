cask "ff-works" do
  version "5.2"
  sha256 :no_check

  url "https://www.ffworks.net/ffWorks.dmg"
  name "ff·Works"
  desc "Video-encoding and transcoding app"
  homepage "https://www.ffworks.net/"

  livecheck do
    url "https://www.ffworks.net/download.html"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "ff·Works.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.osbytes.ffworks*.sfl*",
    "~/Library/Application Support/ffWorks",
    "~/Library/Caches/com.osbytes.ffworks*",
    "~/Library/HTTPStorages/com.osbytes.ffworks*",
    "~/Library/Preferences/com.osbytes.ffworks*.plist",
    "~/Library/WebKit/com.osbytes.ffworks*",
  ]
end
