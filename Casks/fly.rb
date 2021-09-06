cask "fly" do
  version "7.4.0"
  sha256 "d8542cc32925aa040f7516e1a47eac18aae9c4710602067d5b3ceaab046ea245"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
