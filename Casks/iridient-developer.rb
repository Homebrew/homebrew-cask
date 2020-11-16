cask "iridient-developer" do
  version "3.5.0"
  sha256 "85122c024017878ed0f1e7573601fd737d0a6655b169038f32ae50990ad1b67b"

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}_Universal.dmg"
  appcast "https://www.iridientdigital.com/products/rawdeveloper_history.html",
          must_contain: version.major_minor
  name "Iridient Developer"
  desc "Image processing application"
  homepage "https://www.iridientdigital.com/"

  depends_on macos: ">= :mojave"

  app "Iridient Developer.app"
end
