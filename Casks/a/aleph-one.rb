cask "aleph-one" do
  version "20250302"
  sha256 "35c0649db19955ffa442948083b6adc11324360c167f21f8b4b0aae38169438e"

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
