cask "marathon-infinity" do
  version "20260930"
  sha256 "5feafec20d974b25f89b515006ba5c6d73e95de1c8f6725b6d4f44b375a8015e"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/MarathonInfinity[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  depends_on :macos

  app "Classic Marathon Infinity.app"

  zap trash: [
    "~/Library/Application Support/Marathon Infinity",
    "~/Library/Logs/Marathon Infinity Log.txt",
    "~/Library/Preferences/Marathon Infinity",
    "~/Library/Saved Application State/org.bungie.source.MarathonInfinity.savedState",
  ]
end
