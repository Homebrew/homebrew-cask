cask "molotov" do
  version "4.4.2"
  sha256 "141c596bd144895fd11fe0e0af16d111d9c7ff77416132b4f0b835a165f909c3"

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
