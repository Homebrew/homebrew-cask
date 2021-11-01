cask "molotov" do
  version "4.4.6"
  sha256 "8d133568386e88fbf90f85e827ccb809d79cfd068a9ed5b3dee3fd29450a54b4"

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-#{version}-mac.zip"
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
