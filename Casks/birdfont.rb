cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.16.0"
    sha256 "756784d28d8bd3d8725fc83063ec1ce35ed139298d2ffce5d64c3c2d9899743f"
  elsif MacOS.version <= :catalina
    version "4.16.1"
    sha256 "9fde3aeee0a32a8703ec3fb4258d870de1fb8b589843517fd8e7a2b3c86a8e01"

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
