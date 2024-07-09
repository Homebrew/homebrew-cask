cask "7777" do
  version "1.1.14"
  sha256 "f6a52881729d65c59a42dfc18bb7cf37e65987bc4850e79a35eba5350d482fd4"

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
