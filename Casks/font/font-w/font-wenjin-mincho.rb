cask "font-wenjin-mincho" do
  version "2.001"
  sha256 "ee5dc4a21ced50234b347944a6e9eb1e4dd45c3bf4224646f9941be1258ae934"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

  # No zap stanza required
end
