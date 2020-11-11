cask "iridient-developer" do
  version "3.4.1"
  sha256 "86bb9deb95d672e7466f03e62d1e93d234cff80a229e1335d0ce25e210a2ee7a"

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast "https://www.iridientdigital.com/products/rawdeveloper_history.html",
          must_contain: version.major_minor
  name "Iridient Developer"
  desc "Image processing application"
  homepage "https://www.iridientdigital.com/"

  app "Iridient Developer.app"
end
