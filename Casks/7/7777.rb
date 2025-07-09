cask "7777" do
  version "1.1.28"
  sha256 "f0c34a086870fdff66da53e3cc19a031e010e6e7ee5ec1a18480c18fa9f35186"

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
