cask "fly" do
  version "7.12.1"
  sha256 "a481ef64f11264b6d7e18a3c3ff7a21e33a92c022b0abab488e8b2ee09329696"

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
