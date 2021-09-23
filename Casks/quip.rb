cask "quip" do
  version "7.42.0"
  sha256 "6067ea9b7bdfa42ff68a2ee8dc4be334f05e7d15deae14a02d85190fa2142b30"

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
