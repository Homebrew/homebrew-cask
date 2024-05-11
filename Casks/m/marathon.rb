cask "marathon" do
  version "20240510"
  sha256 "8b9c0ce9ce7d2f3bd0aa0f2be74f47966c454cdf78adab9c6fdcfa1b7678ffdd"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Marathon[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Classic Marathon.app"

  zap trash: [
    "~/Library/Application Support/Marathon",
    "~/Library/Logs/Marathon Log.txt",
    "~/Library/Preferences/Marathon",
    "~/Library/Saved Application State/org.bungie.source.Marathon.savedState",
  ]
end
