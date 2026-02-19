cask "fly" do
  version "8.0.2"
  sha256 "b5d6be61b70156c696ce8ed2421b1707f575fc40c531fa3511f9cc3768087f1e"

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
