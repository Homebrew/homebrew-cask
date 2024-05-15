cask "font-lxgw-fasmartgothic" do
  version "1.121"
  sha256 "c38f0b48d6b2c594969932717d720e643ccd45f05a00c08ac42ef90e6897fe5e"

  url "https://github.com/lxgw/LxgwNeoXiHei/releases/download/v#{version}/LXGWFasmartGothic.ttf"
  name "LXGW FasmartGothic"
  name "霞鹜尚智黑"
  desc "Chinese sans-serif font derived from IPAex Gothic"
  homepage "https://github.com/lxgw/LxgwNeoXiHei"

  font "LXGWFasmartGothic.ttf"

  # No zap stanza required
end
