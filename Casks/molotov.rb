cask "molotov" do
  version "4.5.0"

  arch = Hardware::CPU.intel? ? "" : "arm64"

  if Hardware::CPU.intel?
    sha256 "9366230de159a4b5dffe29e1823b6e3bc0d6e6fd2ddc2c4f1b9e9764319cf995"
  else
    sha256 "4b5303345be7bfcf4f90440424c52f5fd06d912c500969d576cef4eba159d82d"
  end

  if Hardware::CPU.intel?
    url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-#{version}-mac.zip"
  else
    url "https://desktop-auto-upgrade.molotov.tv/mac/m1/Molotov-#{version}-#{arch}-mac.zip"
  end

  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    if Hardware::CPU.intel?
      url "https://desktop-auto-upgrade.molotov.tv/mac/manifest.json"
      regex(%r{/Molotov-v?(\d+(?:\.\d+)+)-mac\.zip}i)
    else
      url "https://desktop-auto-upgrade.molotov.tv/mac/m1/manifest.json"
      regex(%r{/Molotov-v?(\d+(?:\.\d+)+)-#{arch}-mac\.zip}i)
    end
  end

  app "Molotov.app"
end
