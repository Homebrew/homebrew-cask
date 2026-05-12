cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"

  version "0.28.0"
  sha256 arm:   "600744fa43ca2c012055910d802123f2494d8c0b92191d471ec482e2cc655878",
         intel: "ec3376c498fb8bf4b4199bc6aa98ec75ffc23d2ce67f00bb3e709a6f1f30ba04"

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
