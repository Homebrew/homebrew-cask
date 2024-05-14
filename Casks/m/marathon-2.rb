cask "marathon-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20240513"
  sha256 "e051ce3ecb23a2e13d99d693073abe01af3b5d5a7dbd444a16d29dc9b13bb1bb"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Marathon2[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Classic Marathon 2.app"

  zap trash: [
    "~/Library/Application Support/Marathon 2",
    "~/Library/Logs/Marathon 2 Log.txt",
    "~/Library/Preferences/Marathon 2",
    "~/Library/Saved Application State/org.bungie.source.Marathon2.savedState",
  ]
end
