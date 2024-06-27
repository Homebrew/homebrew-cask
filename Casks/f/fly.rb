cask "fly" do
  version "7.11.2"
  sha256 "ecfe4a79f0b66441d692e8b449dc054b89ceee98572a981a7bbead8b83d34c43"

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
