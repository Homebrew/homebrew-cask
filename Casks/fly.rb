cask "fly" do
  version "7.8.0"
  sha256 "2f3a2128422391c4ab35801e78b9b8d3f8d6185c2e7375353c6308e0fd94b727"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
