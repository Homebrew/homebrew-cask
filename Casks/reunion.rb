cask "reunion" do
  version "12.0.0.201013n"
  sha256 "e0cdc703547393a21c931ec85d8a69699ed2f7cc10926c37060fb4659341d96c"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          must_contain: version.dots_to_hyphens
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  app "Reunion #{version.major}.app"
end
