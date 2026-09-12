cask "launchie" do
  version "1.6.0"
  sha256 "e5d3843a4f4959ea7766c9a9437f4d560e461b99046fca31b4c49742b45b2f95"

  url "https://github.com/nick-friedrich/launchie-launchpad-replacement-mac-os/releases/download/#{version}/Launchie_#{version}.dmg"
  name "Launchie"
  desc "Launchpad replacement"
  homepage "https://www.launchie.app/"

  depends_on macos: :tahoe

  app "Launchie.app"

  zap trash: [
    "~/Library/Application Scripts/de.nick-friedrich.Launchie",
    "~/Library/Containers/de.nick-friedrich.Launchie",
  ]
end
