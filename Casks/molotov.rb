cask "molotov" do
  version "4.4.8"
  sha256 "7544881da473c027946b27c79618eb76aacb4a9b41c72fb713c7e6f079c7d074"

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-#{version}-mac.zip"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    url "https://desktop-auto-upgrade.molotov.tv/mac/manifest.json"
    regex(%r{/Molotov-v?(\d+(?:\.\d+)+)-mac\.zip}i)
  end

  app "Molotov.app"
end
