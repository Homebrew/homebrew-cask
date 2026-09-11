cask "font-wenjin-mincho" do
  version "2.020"
  sha256 "46c115d4edf92504a6606c1f36c787c278acc6fcf1e303037e5b6461403d62ac"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "ttc/WenJinMincho-OTF.ttc"

  # No zap stanza required
end
