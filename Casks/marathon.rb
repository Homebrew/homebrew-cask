cask "marathon" do
  version "20200904"
  sha256 "c3959e388909d0fc5d0742a2151fb2945ab7b8dfe9fcfdfabff3708a6a256949"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon.app"
end
