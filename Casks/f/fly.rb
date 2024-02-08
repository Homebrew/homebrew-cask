cask "fly" do
  version "7.11.1"
  sha256 "eb9f08707ef1a604921bbec182210ef2d4405122a02a05f50b3d86159b31188d"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"

  # No zap stanza required
end
