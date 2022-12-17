cask "marathon-infinity" do
  version "20221126"
  sha256 "01b8ddb512f38b4f57109bd4d8fd9fdab06469791652e3fd2036b7ce3ac6fb0c"

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
