cask "7777" do
  version "1.2.0"
  sha256 "3a92a789cd231505e6c55e3041c2b1c61d8d0a3451ff78b182fb9fae9e0e365c"

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
