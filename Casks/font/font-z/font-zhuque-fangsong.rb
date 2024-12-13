cask "font-zhuque-fangsong" do
  version "0.200"
  sha256 "b0fbffc4a8875c5ab41c07f9f2e83b0be7d58d18bdaf4f7f24d3d401682eca8c"

  url "https://github.com/TrionesType/zhuque/releases/download/v#{version}/ZhuqueFangsong-v#{version}.zip"
  name "Zhuque Fangsong"
  name "朱雀仿宋"
  homepage "https://github.com/TrionesType/zhuque"

  font "ZhuqueFangsong-Regular.ttf"

  # No zap stanza required
end
