cask "diashapes" do
  version "0.3.0"
  sha256 "2b858e180f7ed1fff23c0fd7c917ad161b6ed4e561bc7a7ce4d71bd368947925"

  # sourceforge.net/dia-installer/diashapes/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dia-installer/diashapes/#{version}/diashapes-#{version}.dmg"
  appcast "https://sourceforge.net/projects/dia-installer/rss?path=/diashapes"
  name "Dia"
  homepage "http://dia-installer.de/"

  app "Diashapes.app"
end
