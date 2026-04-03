cask "font-wenjin-mincho" do
  version "2.010"
  sha256 "9d24347443bff521d55c479ee1c8ddb7058a09b31396c0ec04413ca265208275"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

  # No zap stanza required
end
