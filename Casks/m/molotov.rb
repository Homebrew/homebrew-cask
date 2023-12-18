cask "molotov" do
  arch arm: "-arm64"
  arch_folder = on_arch_conditional arm: "m1/"

  on_arm do
    version "5.0.1"
    sha256 "208069a13a02a78e07ba52c15d1c5d7cb7e07fece825cc373fb93c46fad91ec4"
  end
  on_intel do
    version "5.0.0"
    sha256 "adace86201c436439af0c489a648b73c69762b2f53fe6e8232adc7cbda756e8d"
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
