cask "fly" do
  version "6.7.4"
  sha256 "eb3b118cd7d50552df5e66d490be3ccbb16b78ebf98e61865079ffbbc80b7223"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/concourse/concourse/releases.atom"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
