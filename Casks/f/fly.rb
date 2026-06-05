cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.2.3"
  sha256 arm:   "4f657f17e5504fa9a53e3cc7dc06374c7888a5508bde2a8afea398cf801235ed",
         intel: "619088abf63b1c445609cc8465a55ca1805d721d1f8874a935dbdffc19b98f62"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "fly"

  # No zap stanza required
end
