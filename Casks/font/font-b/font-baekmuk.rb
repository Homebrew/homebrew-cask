cask "font-baekmuk" do
  version :latest
  sha256 :no_check

  url "https://kldp.net/baekmuk/release/865-baekmuk-ttf-2.2.tar.gz"
  name "font-baekmuk"
  desc "Korean fonts"
  homepage "https://kldp.net/baekmuk/"

  font "baekmuk-ttf-2.2/ttf/batang.ttf"
  font "baekmuk-ttf-2.2/ttf/dotum.ttf"
  font "baekmuk-ttf-2.2/ttf/gulim.ttf"
  font "baekmuk-ttf-2.2/ttf/hline.ttf"

  # No zap stanza required
end
