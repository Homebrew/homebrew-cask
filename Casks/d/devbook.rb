cask "devbook" do
  arch arm: "-arm64"

  version "0.1.18"
  sha256 arm:   "a1e7a0f821bf30dc9bd3b6dd07da8c28af51b415faafb80cc96f4eaed06d37e5",
         intel: "1294edfd9ecd586ffb0d1d2cf0247dde8b274b128e7c22c773c8645c8cd8e233"

  url "https://download.todesktop.com/2102273jsy18baz/Devbook%20#{version}#{arch}.dmg",
      verified: "download.todesktop.com/"
  name "Devbook"
  desc "Search engine for developers"
  homepage "https://usedevbook.com/"

  disable! date: "2024-07-10", because: :discontinued

  auto_updates true

  app "Devbook.app"

  zap trash: "~/Library/Application Support/com.foundrylabs.devbook/*"
end
