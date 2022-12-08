cask "farcaster" do
  version "0.5.2"
  sha256 :no_check

  url "https://downloads.farcaster.xyz/Farcaster-latest.dmg"
  name "Farcaster"
  desc "Decentralized social network"
  homepage "https://www.farcaster.xyz/"

  livecheck do
    url "https://s3.amazonaws.com/downloads.farcaster.xyz/latest-mac.yml"
    strategy :electron_builder
  end

  app "Farcaster.app"

  zap trash: [
    "~/Library/Application Support/farcaster-client",
    "~/Library/Preferences/org.erb.FarcasterClient.plist",
  ]
end
