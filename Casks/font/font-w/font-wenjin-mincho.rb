cask "font-wenjin-mincho" do
  version "2.002"
  sha256 "fbe938aa9b4eca0a2a0bb858689ddf51de5d3e391029a062e4ed25527897d2d3"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

  # No zap stanza required
end
