cask "hummingbird" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "57201d496ffa5f3e259903ad30e0760e481573813aafee934ace63e6895aa2de",
         intel: "277945f88a18799320d027ad6017f70c7c976bdcbcb542151df5284f24bba1d4"

  url "https://eddie.website/repository/hummingbird/#{version}/hummingbird-macos-#{arch}-notarized-#{version}.zip",
      verified: "eddie.website/repository/hummingbird/"
  name "Hummingbird"
  desc "OpenVPN 3 client"
  homepage "https://airvpn.org/hummingbird"

  livecheck do
    url "https://airvpn.org/macos/hummingbird/"
    regex(/eddie[._-]selected[._-]version">v?(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :high_sierra"

  binary "hummingbird-macos-#{arch}-#{version}/hummingbird"

  postflight do
    set_ownership("#{staged_path}/hummingbird-macos-#{arch}-#{version}/hummingbird", user: "root")
  end

  # No zap stanza required
end
