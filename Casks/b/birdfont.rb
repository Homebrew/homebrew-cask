cask "birdfont" do
  on_ventura :or_older do
    version "5.2.1"
    sha256 "e68b64679b8cdfbc193304edb83389e9546210ad77e886c903c30c3db89597e5"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    version "6.15.1"
    sha256 "74756add690766520565133d2bdd5f1767f0414e20b25e5381f9d44fec39aa22"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*14.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Font editor"
  homepage "https://birdfont.org/"

  app "BirdFontNonCommercial.app"

  zap trash: [
    "~/Library/Application Scripts/org.birdfont.birdfont",
    "~/Library/Containers/org.birdfont.birdfont",
  ]
end
