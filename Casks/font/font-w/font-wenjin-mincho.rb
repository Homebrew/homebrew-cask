cask "font-wenjin-mincho" do
  version "1.100"
  sha256 "6f547297d89dce2ec1777228baa43a36b5f3a078611a12ac375da1db43f48c8c"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "font-wenjin-mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

end
