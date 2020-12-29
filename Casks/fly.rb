cask "fly" do
  version "6.7.2"
  sha256 "e095e0d631cd42a28b63e7101819840bad1b255d8b6d31ceb1fc0220c055605d"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/concourse/concourse/releases.atom"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
