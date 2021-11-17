cask "quip" do
  version "7.46.2"
  sha256 "b2267fc2b842c81b3d9d296e3c57b6541eb63c726ccdd9b8fe5f02e5cd531107"

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
