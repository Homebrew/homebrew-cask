cask "molotov" do
  version "4.4.4"
  sha256 "bb719e48fc2ac61e3f5491135547fe3eab89fccadc29fbb73e4b4b3f60b7375c"

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    url "https://desktop-auto-upgrade.molotov.tv/mac/manifest.json"
    strategy :page_match
    regex(%r{/Molotov-v?(\d+(?:\.\d+)*)-mac\.zip}i)
  end

  app "Molotov.app"
end
