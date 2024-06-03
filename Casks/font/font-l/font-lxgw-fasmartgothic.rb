cask "font-lxgw-fasmartgothic" do
  version "1.123.1"
  sha256 "e7442a3c9ebca27eb7c2559bbf609f46c701a5e315008961beb1fd0afabdd046"

  url "https://github.com/lxgw/LxgwNeoXiHei/releases/download/v#{version}/LXGWFasmartGothic.ttf"
  name "LXGW FasmartGothic"
  name "霞鹜尚智黑"
  desc "Chinese sans-serif font derived from IPAex Gothic"
  homepage "https://github.com/lxgw/LxgwNeoXiHei"

  font "LXGWFasmartGothic.ttf"

  # No zap stanza required
end
