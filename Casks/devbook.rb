cask "devbook" do
  version "0.1.18"

  if Hardware::CPU.intel?
    sha256 "1294edfd9ecd586ffb0d1d2cf0247dde8b274b128e7c22c773c8645c8cd8e233"

    url "https://download.todesktop.com/2102273jsy18baz/Devbook%20#{version}.dmg",
        verified: "download.todesktop.com/"
  else
    sha256 "a1e7a0f821bf30dc9bd3b6dd07da8c28af51b415faafb80cc96f4eaed06d37e5"

    url "https://download.todesktop.com/2102273jsy18baz/Devbook%20#{version}-arm64.dmg",
        verified: "download.todesktop.com/"
  end

  name "Devbook"
  desc "Search engine for developers"
  homepage "https://usedevbook.com/"

  livecheck do
    url "https://download.todesktop.com/2102273jsy18baz/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Devbook.app"

  zap trash: "~/Library/Application Support/com.foundrylabs.devbook/*"
end
