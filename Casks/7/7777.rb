cask "7777" do
  version "1.1.17"
  sha256 "a1ee2f7c9008a9d23fd3f441653821c2d69c8aff58e78e953402d8782186a816"

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
