cask "buzz" do
  version "0.7.2"
  sha256 "e187ba271c8491a2d34bdede96e7bbd663c5a248332dd656e3c1a6140e99208f"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac.dmg"
  name "buzz"
  desc "Transcribes and translates audio"
  homepage "https://github.com/chidiwilliams/buzz"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Buzz.app"

  zap trash: "~/Library/Logs/Buzz"
end
