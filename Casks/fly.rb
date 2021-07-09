cask "fly" do
  version "7.3.2"
  sha256 "4c22ea4e7cdf5b2e009cf9d1d8eac7387a64894ede42c17c1a409c832c3cd058"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
