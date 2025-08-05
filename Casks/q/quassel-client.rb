cask "quassel-client" do
  version "0.14.0"
  sha256 "73b1b65f0e75c88d1dd23aa91c1916a6a3c231472a042eca0907689ab0981b60"

  url "https://github.com/quassel/quassel/releases/download/#{version}/QuasselClient-macOS-#{version}.dmg",
      verified: "github.com/quassel/quassel/"
  name "Quassel IRC"
  desc "Quassel IRC: Chat comfortably. Everywhere"
  homepage "https://quassel-irc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Quassel Client.app"

  zap trash: "~/Library/Preferences/org.quassel-irc.client.plist"

  caveats do
    requires_rosetta
  end
end
