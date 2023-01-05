cask "buzz" do
  version "0.7.1"
  sha256 "f49d067391e38dd30fee63509fd91fc7e38ba018ecb3212bafd374d73e02a6cf"

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
