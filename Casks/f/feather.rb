cask "feather" do
  arch arm: "mac-arm64", intel: "mac"

  version "2.8.1"
  sha256 arm:   "a35f19be74ca59bad96f7331d3ca8e4f56ec47e82c193f5fc50ddbebce017233",
         intel: "a44238e9713261a513f5688030cb23bb077584b3682be29bc975d883e7aa31fa"

  url "https://github.com/feather-wallet/feather/releases/download/#{version}/feather-#{version}-#{arch}.zip",
      verified: "github.com/feather-wallet/feather/"
  name "Feather"
  desc "Monero desktop wallet"
  homepage "https://featherwallet.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Feather.app"

  zap trash: "~/Library/Application Support/FeatherWallet"
end
