cask "7777" do
  version "1.1.29"
  sha256 "d48c20cbe0f9336cc27ba531970edb51c5ccb6750c5e3cb722e49e6f4e672430"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  livecheck do
    url "https://releases.port7777.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "7777"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
