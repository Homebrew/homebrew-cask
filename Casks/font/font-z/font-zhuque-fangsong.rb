cask "font-zhuque-fangsong" do
  version "0.108"
  sha256 "ff7bab9764b88d58f0f4b18fe197fd1b3eac3a67c10030a240556da8dca0c60a"

  url "https://github.com/TrionesType/zhuque/releases/download/v#{version}/ZhuqueFangsong-v#{version}.zip"
  name "Zhuque Fangsong"
  name "朱雀仿宋"
  homepage "https://github.com/TrionesType/zhuque"

  font "ZhuqueFangsong-Regular.ttf"

  # No zap stanza required
end
