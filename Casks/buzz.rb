cask "buzz" do
  version "0.6.4"
  sha256 "0d883782511844dacd041ab7ea6736a6cf12a3dbb9ae5b94172ee82a403a5e47"

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
