cask "sabaki" do
  version "0.52.1"
  sha256 "231dcfcf635daecd17d78df71f606e32f0521d51125219f2a498b08fb13d9e6f"

  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z",
      verified: "github.com/SabakiHQ/Sabaki/"
  name "Sabaki"
  desc "Go board and SGF editor"
  homepage "https://sabaki.yichuanshen.de/"

  app "Sabaki.app"
end
