cask "marathon" do
  version "20240712"
  sha256 "2802052943371708f7cebd265fd80eab3aabef2f136fc3916a8b6a13a684e65f"

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
