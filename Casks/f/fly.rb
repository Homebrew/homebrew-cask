cask "fly" do
  version "7.14.2"
  sha256 "2658ee1ee9dfa6b50def4f338fd3f3fc382b4091cfcf1261989d13b693b470eb"

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
