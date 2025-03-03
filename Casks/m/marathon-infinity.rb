cask "marathon-infinity" do
  version "20250302"
  sha256 "a86f4af4d2b6c15565ce524228f23d493661285353bbc708eb491815879a3f8c"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/MarathonInfinity[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Classic Marathon Infinity.app"

  zap trash: [
    "~/Library/Application Support/Marathon Infinity",
    "~/Library/Logs/Marathon Infinity Log.txt",
    "~/Library/Preferences/Marathon Infinity",
    "~/Library/Saved Application State/org.bungie.source.MarathonInfinity.savedState",
  ]
end
