cask "marathon-infinity" do
  version "20240510"
  sha256 "cf8910499bdf89870cb46c2e9e9a3ac6f92a4c2b82033e2bf52f6409d326592d"

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
