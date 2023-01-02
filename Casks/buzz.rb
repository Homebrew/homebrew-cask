cask "buzz" do
  version "0.7.0"
  sha256 "09d0430947a9699517dcbedc6774411a61802372eae693adccbe8a9fdcfe5e04"

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
