cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "25.1"
  sha256 arm:   "eb0a41f7f5be97cc9f82959125eadc874c42dbc9665223aa3e1d61b0d7299b96",
         intel: "056b65dff9e09fdc4cf293c9022b2956ea43b8c4213fec62e9e63fd3b4d91d00"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-#{arch}-apple-darwin.dmg"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  livecheck do
    url "https://github.com/bitcoin/bitcoin"
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist"
end
