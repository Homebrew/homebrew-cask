cask "font-migmix-2p" do
  version "20150712"
  sha256 "b9289b61661ed2c158230651a963724618620607b060ae9701f1c5bbedfdee7f"

  url "https://ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/63544/migmix-2p-#{version}.zip",
    verified: "ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/"
  name "MigMix 2P"
  homepage "https://mix-mplus-ipa.osdn.jp/migmix/#migmix2p"

  font "migmix-2p-#{version}/migmix-2p-bold.ttf"
  font "migmix-2p-#{version}/migmix-2p-regular.ttf"

  # No zap stanza required
end
