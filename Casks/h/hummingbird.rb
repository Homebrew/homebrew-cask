cask "hummingbird" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "ded04a6b3909a5f001825851cf4941489fc3b780b382e6bac4bb9f18596b3b30",
         intel: "43ce210c9e5b62bc0c2f147b4631a7d021c4bd8eb2f4cd49d937b0a887513122"

  url "https://eddie.website/repository/hummingbird/#{version}/hummingbird-macos-#{arch}-notarized-#{version}.zip",
      verified: "eddie.website/repository/hummingbird/"
  name "Hummingbird"
  desc "OpenVPN 3 client"
  homepage "https://airvpn.org/hummingbird"

  livecheck do
    url "https://airvpn.org/macos/hummingbird/"
    regex(/href=.*?hummingbird[._-]macos[._-]#{arch}[._-]notarized[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  binary "hummingbird-macos-#{arch}-#{version}/hummingbird"

  postflight do
    set_ownership("#{staged_path}/hummingbird-macos-#{arch}-#{version}/hummingbird", user: "root")
  end

  # No zap stanza required
end
