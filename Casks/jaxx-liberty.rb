cask "jaxx-liberty" do
  version "2.6.3"
  sha256 "86ccdd76668083972c7cd0034aee43af314189f81c325d8e1a80ea7136929766"

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
