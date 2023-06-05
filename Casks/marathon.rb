cask "marathon" do
  version "20230529"
  sha256 "d736253525003864212f1809c9814c4a6d5324b0ea524860dde1305e0cce4125"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Marathon[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  app "Marathon.app"
end
