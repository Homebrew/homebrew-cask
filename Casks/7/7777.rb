cask "7777" do
  version "1.1.19"
  sha256 "de628ef65c1375a09618e65fd90c0456118691d0830fd288e289497dce98849a"

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
