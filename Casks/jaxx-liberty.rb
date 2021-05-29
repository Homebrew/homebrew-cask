cask "jaxx-liberty" do
  version "2.6.4"
  sha256 "bc0b37cfe544fbe7ed63456b997561a2161e15cbd628630a6f09ea73b1581088"

  url "https://download-liberty.jaxx.io/Jaxx.Liberty-#{version}.dmg"
  name "Jaxx Blockchain Wallet"
  desc "Blockchain Wallet, holdings, crypto prices and news"
  homepage "https://jaxx.io/"

  livecheck do
    url "https://download-liberty.jaxx.io/latest-mac.yml"
    strategy :electron_builder
  end

  app "Jaxx Liberty.app"

  zap trash: [
    "~/Library/Application Support/jaxx",
    "~/Library/Logs/jaxx",
  ]
end
