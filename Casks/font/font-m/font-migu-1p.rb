cask "font-migu-1p" do
  version "20150712"
  sha256 "9406399eeb94bb98f0844c2cd6bc94c390d994e6705af56e550d27f2a30b4bd5"

  url "https://ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/63545/migu-1p-#{version}.zip",
    verified: "ftp.iij.ad.jp/pub/osdn.jp/mix-mplus-ipa/"
  name "Migu 1P"
  homepage "https://mix-mplus-ipa.osdn.jp/migu/#migu1p"

  font "migu-1p-#{version}/migu-1p-bold.ttf"
  font "migu-1p-#{version}/migu-1p-regular.ttf"

  # No zap stanza required
end
