cask "fly" do
  version "8.0.0"
  sha256 "141fcc1607f18e55b655bd7dd3198814238733001347ba814b3e4442dc4d2d7d"

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
