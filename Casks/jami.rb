cask "jami" do
  version "20200918.1653"
  sha256 "3ab3e22849405dbbfbc5f5cd731cdf730b52eaf9b58bf8b0b5da54a07b836f0d"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
