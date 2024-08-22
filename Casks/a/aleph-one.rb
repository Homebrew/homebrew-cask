cask "aleph-one" do
  version "20240822"
  sha256 "3374f3b639f8db1792b8215e23ab5959979b7349e3bf223463880caed9d2a2ae"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Aleph One"
  desc "Open-source continuation of Bungie's Marathon 2 game engine"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/AlephOne[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Aleph One.app"

  zap trash: [
    "~/Library/Logs/Aleph One Log.txt",
    "~/Library/Preferences/org.bungie.source.AlephOne*",
    "~/Library/Saved Application State/org.bungie.source.AlephOne.savedState",
  ]
end
