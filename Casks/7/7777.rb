cask "7777" do
  version "1.2.1"
  sha256 "1aec08c7148f88b0ba3dac5451414f804d397de8f0c216e41d91d2034271eac9"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  livecheck do
    url "https://releases.port7777.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "7777"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
