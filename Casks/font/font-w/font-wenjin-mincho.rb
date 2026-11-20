cask "font-wenjin-mincho" do
  version "2.101"
  sha256 "58b2015cb9699a07629129512f844e6fde4236f2f6d25917808d57bf8a39c385"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "ttc/WenJinMincho-OTF.ttc"

  zap :not_required
end
