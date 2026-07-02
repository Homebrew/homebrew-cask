cask "font-wenjin-mincho" do
  version "2.012"
  sha256 "92cf0a7583042798c3ef3302892096e97f76dfc970053bbdc675971dfa1b7b50"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

  # No zap stanza required
end
