cask "quip" do
  version "7.35.3"
  sha256 "84db3369a2b2fbf2c8a4f724ff5a5794b476c07b7be6d4783c6d839161189710"

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
