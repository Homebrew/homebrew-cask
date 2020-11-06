cask "retroshare" do
  version "0.6.5"
  sha256 "6c2e900f236fa8ea06e55e5ca29132656d6eb4bfd0060d9a7b95c650f67d069d"

  # github.com/RetroShare/RetroShare/ was verified as official when first introduced to the cask
  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version}/Retroshare-#{version}.OSX-10.13+.dmg"
  appcast "https://github.com/RetroShare/RetroShare/releases.atom"
  name "RetroShare"
  homepage "https://retroshare.sourceforge.io/"

  app "retroshare.app"
end
