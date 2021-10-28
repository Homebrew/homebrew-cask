cask "fly" do
  version "7.6.0"
  sha256 "b3aabdb93233e987b6001482cae4e2ced7614f6cf2fb01e7bf87e9f9692f44dd"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
