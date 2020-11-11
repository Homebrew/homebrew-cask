cask "macbreakz" do
  version "5.40"
  sha256 "4c0aeb1368fe5dae8a17991e1397f3917e21d6601b7d837526af880f4077ce3b"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
  name "MacBreakZ"
  homepage "https://www.publicspace.net/MacBreakZ/"

  app "MacBreakZ #{version.major}.app"
end
