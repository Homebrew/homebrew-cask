cask "7777" do
  version "1.1.26"
  sha256 "5df653bcae86c2ea86621df23aeedebef499815d10551db4f7b3ab94c096bf3c"

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
