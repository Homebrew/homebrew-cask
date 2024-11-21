cask "guitar-pro" do
  version "8.1.3-121"
  sha256 "89c3cf2f3110ad39e034bbec879972d717199b56283b551bed7a3b62596caa87"

  url "https://downloads.guitar-pro.com/gp#{version.major}/#{version}/macOS/guitar-pro.tar.gz"
  name "Guitar Pro"
  desc "Sheet music editor software for guitar, bass, keyboards, drums and more"
  homepage "https://www.guitar-pro.com/"

  livecheck do
    url "https://updates.guitar-pro.com/gp#{version.major}?os=macOS&channel=stable"
    strategy :sparkle, &:version
  end

  auto_updates true

  pkg "GuitarPro#{version.major}.pkg"

  uninstall pkgutil: [
    "com.arobas-music.guitarpro*",
    "com.arobas-music.soundbank.standard",
  ]

  zap trash: [
    "/Library/Application Support/Arobas Music",
    "~/Library/Application Support/Arobas Music",
    "~/Library/HTTPStorages/com.arobas-music.guitarpro*",
    "~/Library/Preferences/com.arobas-music.guitarpro*.plist",
    "~/Library/Saved Application State/com.arobas-music.guitarpro*.savedState",
  ]
end
