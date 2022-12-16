cask "aladin" do
  version "12.001"
  sha256 :no_check

  url "https://aladin.u-strasbg.fr/java/download/Aladin.dmg"
  name "Aladin Desktop"
  desc "Interactive sky atlas"
  homepage "https://aladin.u-strasbg.fr/AladinDesktop/"

  livecheck do
    url "https://aladin.u-strasbg.fr/java/nph-aladin.pl?frame=downloading#Official"
    regex(%r{<h1>\s*Official\s+version\s*(?:<[^/>]*>\s*)?v?(\d+(?:\.\d+)+)}i)
  end

  app "Aladin.app"
end
