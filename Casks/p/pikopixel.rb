cask "pikopixel" do
  version "1.0-b10"
  sha256 "3fa29b5a3899c9a13018c791399225f7dd8ed0e6c4a02a117867f4963f048904"

  url "https://twilightedge.com/downloads/PikoPixel.#{version}.dmg",
      user_agent: :fake
  name "PikoPixel"
  desc "Pixel-art editor"
  homepage "https://twilightedge.com/mac/pikopixel/"

  livecheck do
    url "https://twilightedge.com/mac/pikopixel/history.html"
    regex(/PikoPixel[._-]?(\d+(?:\.\d+)*(?:-b\d+)?)\.dmg/i)
  end

  app "PikoPixel.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.twilightedge.pikopixel.sfl*",
    "~/Library/Preferences/com.twilightedge.PikoPixel.plist",
  ]
end
