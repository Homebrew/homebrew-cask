cask "font-migmix-1p" do
  version "20150712"
  sha256 "d71aa59146c600bc2f22de87495fe0127741fbb692736be0e1fe454e128c9d76"

  url "https://ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/63544/migmix-1p-#{version}.zip",
    verified: "ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/"
  name "MigMix 1P"
  homepage "https://mix-mplus-ipa.osdn.jp/migmix/#migmix1p"

  font "migmix-1p-#{version}/migmix-1p-bold.ttf"
  font "migmix-1p-#{version}/migmix-1p-regular.ttf"

  # No zap stanza required
end
