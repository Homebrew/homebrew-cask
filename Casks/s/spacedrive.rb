cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "8363ceb903cc8d2698b9a896adaa9c2cce3089d4d69488fb26550b579f9815d4",
         intel: "7b3ccff6b0ed58e576443af7e88dd0f7eedb22a69cc1202ef4dc1b28d3b6592a"

  url "https://github.com/spacedriveapp/spacedrive/releases/download/#{version}/Spacedrive-darwin-#{arch}.dmg"
  name "Spacedrive"
  desc "Open source cross-platform file explorer"
  homepage "https://github.com/spacedriveapp/spacedrive"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Spacedrive.app"

  # No zap stanza required
end
