cask "fly" do
  version "7.8.1"
  sha256 "06527b42cc102487637c3a79f9194b51f2df7cd01a0488c2318842ffd15d9454"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
