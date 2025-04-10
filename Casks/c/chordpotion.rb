cask "chordpotion" do
  version "2.5.0"
  sha256 "d33538ef56ec823722b4467e91c7e1f34770324014dbda59fa2e19b7156d43ab"

  url "https://fys.ams3.cdn.digitaloceanspaces.com/data/ChordPotion_#{version}_mac.zip",
      verified: "fys.ams3.cdn.digitaloceanspaces.com/data/"
  name "ChordPotion"
  desc "MIDI plug-in to transform chords into riffs and melodies"
  homepage "https://feelyoursound.com/chordpotion/"

  livecheck do
    url "https://feelyoursound.com/download-chordpotion/"
    regex(/href=.*?ChordPotion[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

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
