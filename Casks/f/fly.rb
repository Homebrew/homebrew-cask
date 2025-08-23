cask "fly" do
  version "7.14.1"
  sha256 "05c9e21beffea813fc6e3dcc0e852d5c6890eef08ba9c5b7034d314a2b1099d2"

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
