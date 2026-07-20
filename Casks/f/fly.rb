cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.2.4"
  sha256 arm:   "7a724647463ff1b8d68bfc8496aecd350a670f6264c989f210286347b45ca1bb",
         intel: "9638db4ddab788adaa62cd1a68e86e93dc45c26396d2543eacecaa944f8cf572"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "fly"

  # No zap stanza required
end
