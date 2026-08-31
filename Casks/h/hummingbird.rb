cask "hummingbird" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "58a9ddd410fd63b6e8fcbad4c51c0e14bd51d96ac4dffa9e86e7df711c170cd4",
         intel: "cc8d635e433e19074dad918d79cf6bd2041135af1fad86e0d7abc2eff24a9325"

  url "https://eddie.website/repository/hummingbird/#{version}/hummingbird-macos-#{arch}-notarized-#{version}.zip",
      verified: "eddie.website/repository/hummingbird/"
  name "Hummingbird"
  desc "OpenVPN 3 client"
  homepage "https://airvpn.org/hummingbird"

  livecheck do
    url "https://gitlab.com/AirVPN/AirVPN-Suite/-/raw/master/Changelog-Hummingbird.txt"
    regex(/Version\s+v?(\d+(?:\.\d+)+)\s+-/i)
  end

  depends_on :macos

  binary "hummingbird-macos-#{arch}-#{version}/hummingbird"

  postflight_steps do
    set_ownership "hummingbird-macos-*-#{version}/hummingbird", user: "root"
  end

  # No zap stanza required
end
