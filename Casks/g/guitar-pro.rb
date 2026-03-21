cask "guitar-pro" do
  version "8.1.4-43"
  sha256 "8174d7d71d7b1d721e157a02a0314ab5239f2d5d3e2fdcfec6d166c986fd8abe"

  url "https://downloads.guitar-pro.com/gp#{version.major}/#{version}/macOS/guitar-pro-soundbank-full.tar.gz"
  name "Guitar Pro"
  desc "Sheet music editor software for guitar, bass, keyboards, drums and more"
  homepage "https://www.guitar-pro.com/"

  # The download now requires authentication key which is returned from a POST request that requires
  # user information. There is no way to assemble this link systematically.
  # The Sparkle feed has also changed as below, which can be used if the situation changes in the future.
  #
  # livecheck do
  #   url "https://cast.assets-arobas-music.com/sparkleAppCast?os=MACOS&channel=stable&version=0"
  #   strategy :sparkle, &:version
  # end

  disable! date: "2026-03-21", because: "has a download url that requires authentication"

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
