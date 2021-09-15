cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.17.0"
    sha256 "74c778e3b7598a66b9ddb11b189ba6a21d68263fb0499a965dcedd0ac987b051"
  elsif MacOS.version <= :catalina
    version "4.19.4"
    sha256 "1a925a1f4bd1eee0c82e2a916f1c5f6c84344b7d69968a82ffe95eff002bb9eb"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  else
    version "4.19.5"
    sha256 "c6440b1712b8eab4cbc6526ddaae58ef6399c2d5e6bcbed712534138180205e4"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{href=.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :sierra"

  app "BirdFontNonCommercial.app"
end
