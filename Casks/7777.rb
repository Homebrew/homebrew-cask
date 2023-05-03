cask "7777" do
  version "1.1.6"
  sha256 "80005a7f70b95ac148fa3539dc00709edbb37af36f2d6ec03da6b6c8cee3a56d"

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
