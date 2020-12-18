cask "iridient-developer" do
  version "3.5.1"
  sha256 "c26d6afebe114c0fa121b256b19290d9b62b37ffe315c8c8e082a5a7bf58de0f"

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}_Universal.dmg"
  appcast "https://www.iridientdigital.com/products/rawdeveloper_history.html",
          must_contain: version.major_minor
  name "Iridient Developer"
  desc "Image processing application"
  homepage "https://www.iridientdigital.com/"

  depends_on macos: ">= :mojave"

  app "Iridient Developer.app"
end
