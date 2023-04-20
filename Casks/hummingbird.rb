cask "hummingbird" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.1"
  sha256 arm:   "3ac509d0b8831b827e19f9945b588703c4f107e87e1ad8dbc19421fb2c7683c0",
         intel: "89be6ad9a198ce8589e19dd236881d24b6a1d415b748c5d4ef768ff94786fe9d"

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
