cask "fromscratch" do
  version "1.4.3"
  sha256 "fd3d8bc1cf8bc7e03dfb584a89e02b3c4da98f44d96eda0979d149dd668d709f"

  url "https://github.com/Kilian/fromscratch/releases/download/v#{version}/FromScratch-#{version}.dmg",
      verified: "github.com/Kilian/fromscratch/"
  name "FromScratch"
  desc "Autosaving Scratchpad. A simple but smart note-taking app"
  homepage "https://fromscratch.rocks/"

  deprecate! date: "2024-07-10", because: :unmaintained

  app "FromScratch.app"

  caveats do
    requires_rosetta
  end
end
