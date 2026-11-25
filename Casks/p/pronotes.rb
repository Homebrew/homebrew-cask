cask "pronotes" do
  version "0.7.8.2"
  sha256 "c4f8ff1beae55203453e3c674cfb161828f91223a10d23e3891916646331de59"

  url "https://assets.pronotes.app/downloads/ProNotes-#{version}.zip"
  name "ProNotes"
  desc "Apple Notes extension"
  homepage "https://www.pronotes.app/"

  # This file is served with a `Content-Encoding: aws-chunked` header when
  # compression is requested but that causes curl to error because it doesn't
  # understand what decompression to apply.
  livecheck do
    url "https://assets.pronotes.app/downloads/appcast.xml",
        compressed: false
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ProNotes.app"

  zap trash: [
    "~/Library/Caches/com.dexterleng.ProNotes",
    "~/Library/Preferences/com.dexterleng.ProNotes.plist",
    "~/Library/Saved Application State/com.dexterleng.ProNotes.savedState",
    "~/Library/WebKit/com.dexterleng.ProNotes",
  ]
end
