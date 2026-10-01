cask "font-wenjin-mincho" do
  version "2.100"
  sha256 "0195dc935138b2e8303dcdcb06ef62e24b80955f3299d84b8e0d23b9c3c31de4"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "ttc/WenJinMincho-OTF.ttc"

  # No zap stanza required
end
