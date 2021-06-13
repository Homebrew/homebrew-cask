cask "fly" do
  version "7.3.1"
  sha256 "942d5e0652173f6bd110752969a2386dc1104aa7dfa27b44cd9747144157dc2e"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
