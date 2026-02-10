cask "fly" do
  version "8.0.1"
  sha256 "06f8b7d1d05d1324aa14831da76e3ea65f3dbf1c54e4b869408cc83177ba08d6"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "fly"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
