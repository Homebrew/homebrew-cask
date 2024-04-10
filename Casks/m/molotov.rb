cask "molotov" do
  arch arm: "-arm64"
  arch_folder = on_arch_conditional arm: "m1/"

  on_arm do
    version "6.0.1"
    sha256 "648a1cd4496a23272f10f3af2dc901b3c356933fbc25fbc9b0732c52eeccf5b8"
  end
  on_intel do
    version "6.0.0"
    sha256 "b449e72941a18506cf2e51d7e18d2d33e1a90f36a150b8290fcb94d3f712002f"
  end

  url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}Molotov-#{version}-mac.zip"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}manifest.json"
    regex(%r{/Molotov-v?(\d+(?:\.\d+)+)-mac\.zip}i)
  end

  app "Molotov.app"
end
