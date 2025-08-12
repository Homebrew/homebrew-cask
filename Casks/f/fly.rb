cask "fly" do
  version "7.14.0"
  sha256 "a6e48d39f4d1269926a16d67e89669278b48cd92beeef144d3419354e5b743c9"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :unsigned

  binary "fly"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
