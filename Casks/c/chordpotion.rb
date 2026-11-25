cask "chordpotion" do
  version "2.7.0"
  sha256 "410ece17d37ced1dcbd4edec126137e4dbf5840ff4b514b698f4f2ae62ba523f"

  url "https://fys.ams3.cdn.digitaloceanspaces.com/data/ChordPotion_#{version}_mac.zip"
  name "ChordPotion"
  desc "MIDI plug-in to transform chords into riffs and melodies"
  homepage "https://feelyoursound.com/chordpotion/"

  livecheck do
    url "https://feelyoursound.com/download-chordpotion/"
    regex(/href=.*?ChordPotion[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
  end

  depends_on :macos

  pkg "ChordPotion_#{version}.pkg"

  uninstall pkgutil: [
    "com.feelyoursound.ChordPotion.pkg.au",
    "com.feelyoursound.ChordPotion.pkg.dat",
    "com.feelyoursound.ChordPotion.pkg.vst",
    "com.feelyoursound.ChordPotion.pkg.vst3",
  ]

  zap trash: [
        "/Users/Shared/FeelYourSound/ChordPotion",
        "~/Documents/FeelYourSound/ChordPotion",
      ],
      rmdir: "~/Documents/FeelYourSound"
end
