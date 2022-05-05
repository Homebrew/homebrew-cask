cask "molotov" do
  version "4.5.0"
  sha256 "9366230de159a4b5dffe29e1823b6e3bc0d6e6fd2ddc2c4f1b9e9764319cf995"

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
