cask "bison-wallet" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "1.0.5"
    sha256 "be34568944052e1c0e32a94d21d120c7b7af3725eb3eaaee243b204313c606f6"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_intel do
    version "1.0.4"
    sha256 "889d54f752c96e6a079db29b66d14d8b8e4a5577c91d1b3d499c4e781f75554e"

    livecheck do
      skip "No Intel releases available after 1.0.4"
    end
  end

  url "https://github.com/decred/dcrdex/releases/download/v#{version}/bisonw-desktop-darwin-#{arch}-v#{version}.dmg"
  name "Bison Wallet"
  desc "Multi-coin wallet with feeless DEX, atomic swaps, and arbitrage tools"
  homepage "https://github.com/decred/dcrdex"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Bison Wallet.app"

  zap trash: [
    "~/Library/Application Support/Dexc",
    "~/Library/Preferences/com.decred.dcrdex.plist",
  ]
end
