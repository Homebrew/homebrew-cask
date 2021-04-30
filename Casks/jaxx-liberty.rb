cask "jaxx-liberty" do
  version "2.6.1"
  sha256 "adf31c00356525430ee1276def11d5533fbf8f0e2ba1af9ac86e858704b8d91e"

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
