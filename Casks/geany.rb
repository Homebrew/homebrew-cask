cask "geany" do
  version "1.37"
  sha256 "4ad3a8ac715f6a12fb13cbdc972f2dfe0362a84998c00a0d2b43bf805220890b"

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast "https://github.com/geany/geany/releases.atom"
  name "Geany"
  desc "Fast and lightweight IDE"
  homepage "https://www.geany.org/"

  app "Geany.app"
end
