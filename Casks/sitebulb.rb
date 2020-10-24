cask "sitebulb" do
  version "4.4"
  sha256 "86e52aa57caca7fd38864db420c7def8cac5a5abd812ffee9b020cf668795ec9"

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast "https://sitebulb.com/download/",
          must_contain: version.major_minor
  name "Sitebulb"
  homepage "https://sitebulb.com/"

  app "Sitebulb.app"
end
