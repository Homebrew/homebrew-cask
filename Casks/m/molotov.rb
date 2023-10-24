cask "molotov" do
  arch arm: "-arm64"
  arch_folder = on_arch_conditional arm: "m1/"

  on_arm do
    version "4.7.2"
    sha256 "b8991865f95576008d8aad24282ffa46158f98cd4e3c4c57032336472cc23462"
  end
  on_intel do
    version "4.7.1"
    sha256 "f57e894e6de697190d8ec0c1238fd52289809f5166a11e8a41794a8caa304319"
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
