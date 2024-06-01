cask "font-migmix-1m" do
  version "20150712"
  sha256 "ac91394f3687315fb2727f8ee2b8ef70c6801d0b674dfc991912400eb3e7a344"

  url "https://ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/63544/migmix-1m-#{version}.zip",
    verified: "ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/"
  name "MigMix 1M"
  homepage "https://mix-mplus-ipa.osdn.jp/migmix/#migmix1m"

  livecheck do
    skip "No version information available"
  end

  font "migmix-1m-#{version}/migmix-1m-bold.ttf"
  font "migmix-1m-#{version}/migmix-1m-regular.ttf"

  # No zap stanza required
end
