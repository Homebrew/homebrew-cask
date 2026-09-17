cask "launchie" do
  version "1.6.1"
  sha256 "f4278ef54c9ad99ee505c6c7a51ab49cf72d9016c4d681ec5729092213faace3"

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
