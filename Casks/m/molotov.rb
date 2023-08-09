cask "molotov" do
  arch arm: "-arm64"
  arch_folder = on_arch_conditional arm: "m1/"

  version "4.6.0"
  sha256 arm:   "fe1a2804c50341d9463ef6291756ffbcdb280530e85282e6df5a6368cafb4e58",
         intel: "c8cd1f85ee87eb168e127dc37c4cdae5a111045e621063c3b1724b516eea3c29"

  url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}Molotov-#{version}#{arch}-mac.zip"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  livecheck do
    url "https://desktop-auto-upgrade.molotov.tv/mac/#{arch_folder}manifest.json"
    regex(%r{/Molotov-v?(\d+(?:\.\d+)+)-mac\.zip}i)
  end

  app "Molotov.app"
end
