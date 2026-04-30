cask "brewstation" do
  version "1.3"
  sha256 "1c1b1d698df59218475170638bfe7d98b5c226ffcae148ce4955871c1dfb9df6"

  url "https://github.com/hreinssondev/brewstation/releases/download/#{version}/BrewStation.dmg"
  name "BrewStation"
  desc "Homebrew GUI manager with snapshot saving and restoring"
  homepage "https://github.com/hreinssondev/brewstation"

  depends_on macos: ">= :ventura"

  app "BrewStation.app"
end
