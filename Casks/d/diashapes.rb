cask "diashapes" do
  version "0.3.0"
  sha256 "2b858e180f7ed1fff23c0fd7c917ad161b6ed4e561bc7a7ce4d71bd368947925"

  url "https://downloads.sourceforge.net/dia-installer/diashapes/#{version}/diashapes-#{version}.dmg",
      verified: "sourceforge.net/dia-installer/diashapes/"
  name "Dia"
  desc "Additional shapes for Dia"
  homepage "http://dia-installer.de/shapes/index.html"

  deprecate! date: "2024-09-09", because: :unmaintained

  app "Diashapes.app"

  caveats do
    requires_rosetta
  end
end
