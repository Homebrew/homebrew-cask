cask "fly" do
  version "7.12.0"
  sha256 "24c2feb62b293196cda2e08950affa7f2850b42a985336035fd03a606b25b935"

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
