cask "font-zhuque-fangsong" do
  version "0.212"
  sha256 "bb8b661a7643d2296a72d9d10530a00949419c4e527fb61783f73c2ba1a8c062"

  url "https://github.com/TrionesType/zhuque/releases/download/v#{version}/ZhuqueFangsong-v#{version}.zip"
  name "Zhuque Fangsong"
  name "朱雀仿宋"
  homepage "https://github.com/TrionesType/zhuque"

  font "ZhuqueFangsong-Regular.ttf"

  # No zap stanza required
end
