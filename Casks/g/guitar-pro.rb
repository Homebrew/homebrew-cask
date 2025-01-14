cask "guitar-pro" do
  version "8.1.3-121"
  sha256 "3c7ed10d1945b7ccd83caeb7caa9aec6852ac24640ab35192bf11bd8a16d182a"

  url "https://downloads.guitar-pro.com/gp#{version.major}/#{version}/macOS/guitar-pro-soundbank-full.tar.gz"
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
