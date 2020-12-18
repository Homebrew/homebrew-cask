cask "retroshare" do
  version "0.6.5"
  sha256 "6c2e900f236fa8ea06e55e5ca29132656d6eb4bfd0060d9a7b95c650f67d069d"

  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version}/Retroshare-#{version}.OSX-10.13+.dmg",
      verified: "github.com/RetroShare/RetroShare/"
  appcast "https://github.com/RetroShare/RetroShare/releases.atom"
  name "RetroShare"
  homepage "https://retroshare.cc/"

  app "retroshare.app"
end
