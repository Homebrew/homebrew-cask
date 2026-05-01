cask "brewstation" do
  version "1.4"
  sha256 "7f31a0c5c45cdb5252f508a4e4439a49eeace4d4e62bea291cca093b83a0268b"

  url "https://github.com/hreinssondev/brewstation/releases/download/#{version}/Brewstation.dmg"
  name "BrewStation"
  desc "Homebrew GUI manager with snapshot saving and restoring"
  homepage "https://github.com/hreinssondev/brewstation"

  depends_on macos: ">= :ventura"

  app "BrewStation.app"

  zap trash: [
    "~/Library/Application Support/BrewStation",
    "~/Library/Preferences/com.hreinssondev.brewstation.plist",
    "~/Library/Caches/BrewStation",
  ]
end
