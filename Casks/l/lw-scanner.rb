cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"

  version "0.29.2"
  sha256 arm:   "620e875a9d225d68dd2412d3d909c0b6b6880b63209f6610451d96159c298b7b",
         intel: "b8b2e512c1efc037455c710089fcea38d705c083cbbc3e59c99d49d47b186d49"

  url "https://github.com/lacework/lacework-vulnerability-scanner/releases/download/v#{version}/lw-scanner-darwin-#{arch}.zip",
      verified: "github.com/lacework/lacework-vulnerability-scanner/"
  name "Lacework vulnerability scanner"
  desc "Lacework inline scanner"
  homepage "https://github.com/lacework/lacework-vulnerability-scanner"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "bin/lw-scanner"

  zap trash: "~/.config/lw-scanner"
end
