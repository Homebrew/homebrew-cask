cask "marathon" do
  version "20200904"
  sha256 "c3959e388909d0fc5d0742a2151fb2945ab7b8dfe9fcfdfabff3708a6a256949"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :url
    strategy :git
  end

  app "Marathon.app"
end
