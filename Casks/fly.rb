cask "fly" do
  version "7.1.0"
  sha256 "461fb517430bd1d8f21fe0e2f59d4c293770d7c76e64d7c96133d5c63e3e04b5"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/concourse/concourse/releases.atom"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
