cask "fly" do
  version "7.10.0"
  sha256 "97f88286bff09e4cbb550983ccd8b84d37d3511862b4373adea5fa8b1d8f0b27"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"

  # No zap stanza required
end
