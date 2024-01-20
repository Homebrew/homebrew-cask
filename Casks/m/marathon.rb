cask "marathon" do
  version "20240119"
  sha256 "d65681dd9066e7b7759b0190b143a9c97c91b9f0951595da1b9489b74a01eb67"

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
