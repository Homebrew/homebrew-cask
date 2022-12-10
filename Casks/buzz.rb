cask "buzz" do
  version "0.6.2"
  sha256 "80184bb345a3ef6b32644403209f3daecb6683f975e3b3b65d76c50839522ebc"

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
