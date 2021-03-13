cask "fly" do
  version "7.0.0"
  sha256 "7cdbf924d8f4e18a6f7a6bef65edc25f5ac234161aca21c9f24ed18b337d19db"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/concourse/concourse/releases.atom"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
