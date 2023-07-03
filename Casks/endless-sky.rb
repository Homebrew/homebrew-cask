cask "endless-sky" do
  version "0.10.2"
  sha256 "47e417ac3dbda9cc7eab0202e85301f84971451a6ce793c70b53ec25e5df4890"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/Endless-Sky-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Endless Sky.app"

  zap trash: "~/Library/Application Support/endless-sky"
end
