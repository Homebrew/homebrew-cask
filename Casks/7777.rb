cask "7777" do
  version "1.1.9"
  sha256 "0a1a3c4150a4ae982734c80063a602cd3db013a4eb121be7b7c12bba2c623fec"

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
