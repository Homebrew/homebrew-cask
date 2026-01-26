cask "chordpotion" do
  version "2.6.0"
  sha256 "1704727fde929d06fa99aec83d6f3f57a27d5caff6b86eca758a410d49d45843"

  url "https://fys.ams3.cdn.digitaloceanspaces.com/data/ChordPotion_#{version}_mac.zip",
      verified: "fys.ams3.cdn.digitaloceanspaces.com/data/"
  name "ChordPotion"
  desc "MIDI plug-in to transform chords into riffs and melodies"
  homepage "https://feelyoursound.com/chordpotion/"

  livecheck do
    url "https://feelyoursound.com/download-chordpotion/"
    regex(/href=.*?ChordPotion[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
  end

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
