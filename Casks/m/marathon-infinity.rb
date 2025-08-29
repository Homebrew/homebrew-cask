cask "marathon-infinity" do
  version "20250829"
  sha256 "1a87729341ddb5358b77e6aed3c38009e1f857e9cfd704ec03a5d1babf3a5433"

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
