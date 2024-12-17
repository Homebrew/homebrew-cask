cask "font-zhuque-fangsong" do
  version "0.210"
  sha256 "17afd2e7a196ec4a3139f2fea0a174285aac148c76f5a9bc7eb7d72039a9b87a"

  url "https://github.com/TrionesType/zhuque/releases/download/v#{version}/ZhuqueFangsong-v#{version}.zip"
  name "Zhuque Fangsong"
  name "朱雀仿宋"
  homepage "https://github.com/TrionesType/zhuque"

  font "ZhuqueFangsong-Regular.ttf"

  # No zap stanza required
end
