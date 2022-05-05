cask "fly" do
  version "7.7.1"
  sha256 "356226256041e12a58f3494ed6f9266218d6653aecb8cadef998b88c8213810b"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
