cask "aladin" do
  version "12.060"
  sha256 :no_check

  url "https://aladin.cds.unistra.fr/java/download/Aladin.dmg"
  name "Aladin Desktop"
  desc "Interactive sky atlas"
  homepage "https://aladin.cds.unistra.fr/AladinDesktop/"

  livecheck do
    url "https://aladin.cds.unistra.fr/java/nph-aladin.pl?frame=downloading#Official"
    regex(%r{<h1>\s*Official\s+version\s*(?:<[^/>]*>\s*)?v?(\d+(?:\.\d+)+)}i)
  end

  app "Aladin.app"

  zap trash: "~/.aladin"

  caveats do
    depends_on_java
  end
end
