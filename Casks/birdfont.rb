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
    version "4.15.3"
    sha256 "f36042a339a851aca029d7afa6dcbfb6e56efec94db925bca952d556055a07f7"

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
