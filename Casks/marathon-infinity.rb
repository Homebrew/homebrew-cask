cask "marathon-infinity" do
  version "20230119"
  sha256 "a41d90ad5d579bb06fb9fa82a96754ccb064c446c9fae8dd8bd06c0a9a478ff5"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/MarathonInfinity[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  app "Marathon Infinity.app"
end
