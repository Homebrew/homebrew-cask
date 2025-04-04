cask "fly" do
  version "7.13.0"
  sha256 "6cb70000cab1588d6dba486cd5e17ecb13a972b0b1c180d465c15fc506a6f945"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
