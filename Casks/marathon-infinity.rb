cask "marathon-infinity" do
  version "20210328"
  sha256 "5ffc61b6072a9d6cbe87d073beb0247c1c2b1304eeb263dfaaf7c2725666f86b"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon Infinity.app"
end
