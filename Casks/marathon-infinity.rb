cask "marathon-infinity" do
  version "20200830"
  sha256 "b191070a8116b5081870c8673995589b450cc1183bbf88b1b865b5d251459f7a"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon Infinity.app"
end
