cask "7777" do
  version "1.1.7"
  sha256 "3895fb819dee581024232c69f6ae71e5e091bfa8267d36902c0f9709004b3a7e"

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
