cask "iloader" do
  version "2.0.9"
  sha256 "4c55c9a882826f8bd7777147ad0c520de904f6d70cd2c1bd67770b363df40be9"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg",
      verified: "github.com/nab138/iloader/"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "iloader.app"

  zap trash: "~/Library/Application Support/me.nabdev.iloader"
end
