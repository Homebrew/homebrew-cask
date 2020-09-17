cask "macbreakz" do
  version "5.36"
  sha256 "a50ab71a5582912966835108c5ae5d6364bdde02c15f173fe5e70dd33c5d7429"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
  name "MacBreakZ"
  homepage "https://www.publicspace.net/MacBreakZ/"

  app "MacBreakZ #{version.major}.app"
end
