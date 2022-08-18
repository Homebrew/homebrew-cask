cask "molotov" do
  arch arm: "-arm64"
  arch_folder = on_arch_conditional arm: "m1/"

  version "4.5.0"

  on_intel do
    sha256 "9366230de159a4b5dffe29e1823b6e3bc0d6e6fd2ddc2c4f1b9e9764319cf995"
  end
  on_arm do
    sha256 "4b5303345be7bfcf4f90440424c52f5fd06d912c500969d576cef4eba159d82d"
  end

  url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}Molotov-#{version}#{arch}-mac.zip"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}manifest.json"
    regex(%r{/Molotov-v?(\d+(?:\.\d+)+)#{arch}-mac\.zip}i)
  end

  app "Molotov.app"
end
