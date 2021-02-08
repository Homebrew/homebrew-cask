cask "jami" do
  version "20201208.1930"
  sha256 "f91736b69a0b89dd4cb36e370e3fd807d3e9348e6c82b25f1f83086b472e82d3"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
