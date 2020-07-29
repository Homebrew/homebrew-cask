cask "studio-3t" do
  version "2020.7.0"
  sha256 "e60002d916f075aa6c540b82da6995325251d17996ce29dae84e818b01a9b2b6"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
