cask "7777" do
  version "1.1.20"
  sha256 "62a04ce83b8fe0230ebc5ec1aa9e8e8a4004f533d81ad9a47a175c7da2dd8e2b"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  livecheck do
    url "https://releases.port7777.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  binary "7777"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
