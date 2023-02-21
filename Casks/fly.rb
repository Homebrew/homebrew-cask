cask "fly" do
  version "7.9.1"
  sha256 "51c2d8eed5b83725b7854974e9466d6d750ef51e3b57c2551419eb2324f9b0d4"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
