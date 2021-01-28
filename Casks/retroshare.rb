cask "retroshare" do
  version "0.6.5"
  sha256 "6c2e900f236fa8ea06e55e5ca29132656d6eb4bfd0060d9a7b95c650f67d069d"

  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version}/Retroshare-#{version}.OSX-10.13+.dmg",
      verified: "github.com/RetroShare/RetroShare/"
  name "RetroShare"
  homepage "https://retroshare.cc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "retroshare.app"
end
