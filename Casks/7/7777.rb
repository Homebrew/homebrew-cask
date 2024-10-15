cask "7777" do
  version "1.1.18"
  sha256 "276e3a0d340c7d8e32a811198b67bf5e85bba2a2ee61acd45bc8e0b1347283e8"

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
