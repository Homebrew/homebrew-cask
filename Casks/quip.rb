cask "quip" do
  version "7.49.0"
  sha256 "0644c71f1819e2ade1e4fbeee29e236cc9669841c1d3fe18fbfdde67db79dcd9"

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
