cask "7777" do
  version "1.1.13"
  sha256 "222990ca86ae11702389cf8c5cc3288f4d21e0e02d0ec71229b8bf62ab6e23a0"

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
end
