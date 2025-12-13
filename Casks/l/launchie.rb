cask "launchie" do
  version "1.2.10"
  sha256 "3f47aaba1b9d49e0dee3244e4e7c15aa57c05e2107ba30d222d224824db42f7c"

  url "https://github.com/nick-friedrich/launchie-launchpad-replacement-mac-os/releases/download/#{version}/Launchie_#{version}.dmg",
      verified: "github.com/nick-friedrich/launchie-launchpad-replacement-mac-os/"
  name "Launchie"
  desc "Launchpad replacement"
  homepage "https://www.launchie.app/"

  depends_on macos: ">= :tahoe"

  app "Launchie.app"

  zap trash: [
    "~/Library/Application Scripts/de.nick-friedrich.Launchie",
    "~/Library/Containers/de.nick-friedrich.Launchie",
  ]
end
