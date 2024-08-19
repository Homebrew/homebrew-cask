cask "7777" do
  version "1.1.16"
  sha256 "ad3c23aface0648ba6448f1b6614861c2a480775afe26328a10328e402d0c1e8"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  livecheck do
    url "https://releases.port7777.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  binary "7777"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
