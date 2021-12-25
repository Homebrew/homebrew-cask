cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.17.0"
    sha256 "74c778e3b7598a66b9ddb11b189ba6a21d68263fb0499a965dcedd0ac987b051"
  elsif MacOS.version <= :catalina
    version "4.22.2"
    sha256 "fa372bd4b957df1188d40d900b493e1cf7fd12cd786fba4499652cee5cdd47e6"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  else
    version "4.22.3"
    sha256 "2934efa1ec461a3c6ab855d2af15ac4b8a20a09afeb97fc1fe78ed209ad0f57b"

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
