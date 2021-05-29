cask "quip" do
  version "7.36.0"
  sha256 "32d89ffc40f4335752e87147cee14ffe338d2c962a36c30b7e09c5b3851479ad"

  url "https://quip-clients.com/macosx_#{version}.dmg",
      verified: "quip-clients.com/"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  livecheck do
    url "https://api.quip.com/-/sparkle-feed?manual=0"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Quip.app"
end
