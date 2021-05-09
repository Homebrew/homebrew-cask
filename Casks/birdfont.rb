cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.15.0"
    sha256 "5433ee7bdbe68192bf69a253ce9c248cff844032ece43a2bbc910431c62b1a3f"
  elsif MacOS.version <= :catalina
    version "4.15.2"
    sha256 "f5a34569ed38f293fe4902930b722649f3f1914c3fc9077de20482634a65cf01"

    livecheck do
      url "https://birdfont.org/purchase.php"
      strategy :page_match
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont-(\d+(?:\.\d+)*)-free\.dmg}i)
    end
  else
    version "4.16.2"
    sha256 "b9a0c40e67025ca76fbb2c5bdc597af7d8180d0eb1c59687b4bb90bbd8e6764e"

    livecheck do
      url "https://birdfont.org/purchase.php"
      strategy :page_match
      regex(%r{href=.*?/birdfont-(\d+(?:\.\d+)*)-free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :sierra"

  app "BirdFontNonCommercial.app"
end
