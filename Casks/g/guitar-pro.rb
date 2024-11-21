cask "guitar-pro" do
  version "8.1"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://alt-downloads.guitar-pro.com/gp#{version.major}/stable/guitar-pro-#{version.major}-setup.pkg"
  name "Guitar Pro"
  desc "Sheet music editor software for guitar, bass, keyboards, drums and more"
  homepage "https://www.guitar-pro.com/"

  livecheck do
    url "https://www.guitar-pro.com/blog/c/2163-guitar-pro-news-tips"
    regex(/Guitar\s+Pro\s+v?(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  pkg "guitar-pro-#{version.major}-setup.pkg"

  uninstall pkgutil: [
    "com.arobas-music.guitarpro*",
    "com.arobas-music.soundbank.standard",
  ]

  zap trash: [
    "/Library/Application Support/Arobas Music",
    "~/Library/Application Support/Arobas Music",
    "~/Library/HTTPStorages/com.arobas-music.guitarpro8",
    "~/Library/Preferences/com.arobas-music.guitarpro8.plist",
    "~/Library/Saved Application State/com.arobas-music.guitarpro8.savedState",
  ]
end
