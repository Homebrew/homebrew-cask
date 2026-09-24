cask "launchie" do
  version "1.6.2"
  sha256 "91c54de57c66fb06ac9ab16a847f906ebdca25aee246060f6e73ebf738627897"

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
