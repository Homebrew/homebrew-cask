cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "26.0"
  sha256 arm:   "06932a519f4d3cc3ce5df98b966b8f4c5e1c5d8c391bc5ab95c1828ce36e47db",
         intel: "97449ecc2149ae59c6d6538ddf05645e127ccc28888d69e36daca8bcb6339b97"

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
