cask "aleph-one" do
  version "20200904"
  sha256 "dd7cc3ed66405a81061b47c8c49d5bf91c4f89e0d194b51aa1f6f794fdc461b2"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Aleph One"
  desc "Open-source continuation of Bungie’s Marathon 2 game engine"
  homepage "https://alephone.lhowon.org/"

  app "Aleph One.app"
end
