cask "iridient-developer" do
  version "3.4.0"
  sha256 "3eafbea911ea8e69f5910ff49f122843855cebb57f1ef5c8e301bedb01f8c3d2"

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast "https://www.iridientdigital.com/products/rawdeveloper_history.html"
  name "Iridient Developer"
  homepage "https://www.iridientdigital.com/"

  app "Iridient Developer.app"
end
