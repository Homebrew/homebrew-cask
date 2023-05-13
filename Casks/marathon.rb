cask "marathon" do
  version "20230119"
  sha256 "0b848b947b4adcac7e43fe1c1957aaecc1042a9ce0653dfe79b144b34819da34"

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
