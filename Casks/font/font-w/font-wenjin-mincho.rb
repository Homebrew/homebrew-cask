cask "font-wenjin-mincho" do
  version "2.000"
  sha256 "8de7bfc1bb08c7bd4211723ef9946d8b4bbee4a1fc40b63e834d0c8125abe80d"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

  # No zap stanza required
end
