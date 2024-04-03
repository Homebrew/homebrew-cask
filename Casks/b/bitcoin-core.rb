cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1"
  sha256 arm:   "8f0bdc51733a94f83cb96a215943291de64b501bbe0298a9b897f79d8ad517e9",
         intel: "8fd415bfd0ba2d967d1fd03433b150e9b739a08f86c58c6d4dd0f8506a41fc12"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-#{arch}-apple-darwin.zip"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  livecheck do
    url "https://bitcoincore.org/en/download/"
    regex(/href=.*?bitcoin[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[^"' >]*?\.zip/i)
  end

  depends_on macos: ">= :big_sur"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist"
end
