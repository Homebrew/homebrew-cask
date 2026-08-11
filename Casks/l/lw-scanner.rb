cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"

  version "0.29.1"
  sha256 arm:   "bf31b22049650ce5d3839d9339436e31419682b72be33481bd243e099787c116",
         intel: "2026819d11c2fc519d86cb9fea323d9faa0cace2a8accb8d59eb998956396455"

  url "https://github.com/lacework/lacework-vulnerability-scanner/releases/download/v#{version}/lw-scanner-darwin-#{arch}.zip",
      verified: "github.com/lacework/lacework-vulnerability-scanner/"
  name "Lacework vulnerability scanner"
  desc "Lacework inline scanner"
  homepage "https://docs.lacework.net/console/local-scanning-quickstart"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "bin/lw-scanner"

  zap trash: "~/.config/lw-scanner"
end
