cask "marathon-infinity" do
  version "20210408"
  sha256 "bd076b8758b6cf18e85968e28d20af49d8dbcce5d0cd7c283531d0dc5e1065ec"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon Infinity.app"
end
