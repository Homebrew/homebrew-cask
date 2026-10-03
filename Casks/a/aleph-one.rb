cask "aleph-one" do
  version "20260930"
  sha256 "5029dd771344a76a9897b17e4726c071292c8168d655c6a7fda10076b618f464"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg"
  name "Aleph One"
  desc "Open-source continuation of Bungie's Marathon 2 game engine"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/AlephOne[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  depends_on :macos

  app "Aleph One.app"

  uninstall quit: "org.bungie.source.AlephOne"

  zap trash: [
    "~/Library/Logs/Aleph One Log.txt",
    "~/Library/Preferences/org.bungie.source.AlephOne*",
    "~/Library/Saved Application State/org.bungie.source.AlephOne.savedState",
  ]
end
