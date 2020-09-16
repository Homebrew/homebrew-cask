cask "marathon-infinity" do
  version "20200904"
  sha256 "ee96ebf857044ffd5df19b53bb0bdf26299179d1e2e2a6d8be506e31e0b67e8f"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon Infinity.app"
end
