cask "fly" do
  version "7.8.2"
  sha256 "f724d5700ebf607ce9b5ed554b3e088ee717a81bb413649d15b2b316b415d77a"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
