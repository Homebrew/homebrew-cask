cask "font-migmix-2m" do
  version "20150712"
  sha256 "a8639f277f5a2a2c78c20d05d2a6fb0977116193dcb708997a04080e9615882d"

  url "https://ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/63544/migmix-2m-#{version}.zip",
    verified: "ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/"
  name "MigMix 2M"
  homepage "https://mix-mplus-ipa.osdn.jp/migmix/#migmix2m"

  livecheck do
    skip "No version information available"
  end

  font "migmix-2m-#{version}/migmix-2m-bold.ttf"
  font "migmix-2m-#{version}/migmix-2m-regular.ttf"

  # No zap stanza required
end
