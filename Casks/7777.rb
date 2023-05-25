cask "7777" do
  version "1.1.12"
  sha256 "b3ed3344bf203285651ec4b019ab8d314a729a0d4bb85cd3494fda5b7e8827b0"

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
