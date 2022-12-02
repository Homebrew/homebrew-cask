cask "buzz" do
  version "0.5.8"
  sha256 "03383d814ad28cb9268dc01d5f6c9d92487382ee3459ebd58dec6aa35eee4a42"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac.dmg"
  name "buzz"
  desc "Transcribes and translates audio"
  homepage "https://github.com/chidiwilliams/buzz"

  app "Buzz.app"

  zap trash: "~/Library/Logs/Buzz"
end
