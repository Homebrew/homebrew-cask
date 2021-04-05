cask "marathon" do
  version "20210328"
  sha256 "af45b718d153663832556b6da3df216beb3f704810c47dc194d23dcec6204dcd"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon.app"
end
