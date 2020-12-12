cask "fromscratch" do
  version "1.4.3"
  sha256 "fd3d8bc1cf8bc7e03dfb584a89e02b3c4da98f44d96eda0979d149dd668d709f"

  # github.com/Kilian/fromscratch/ was verified as official when first introduced to the cask
  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-#{version}.dmg"
  appcast "https://github.com/Kilian/fromscratch/releases.atom"
  name "FromScratch"
  desc "Autosaving Scratchpad. A simple but smart note-taking app"
  homepage "https://fromscratch.rocks/"

  app "FromScratch.app"
end
