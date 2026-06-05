cask "font-wenjin-mincho" do
  version "2.011"
  sha256 "78e8063fe22794b26cecbd4b1c9a6924140989e032f3045a233f11ad9e5cbc0f"

  url "https://github.com/takushun-wu/WenJinMincho/releases/download/v#{version}/WenJinMincho-OTC.7z"
  name "WenJin Mincho"
  desc "可免费商用的大字符集宋体字库"
  homepage "https://github.com/takushun-wu/WenJinMincho"

  font "WenJinMincho-OTF.ttc"

  # No zap stanza required
end
