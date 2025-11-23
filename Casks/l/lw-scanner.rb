cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"

  version "0.27.9"
  sha256 arm:   "4453d08e52cccb0aedafd9f439182f1bebde190e7cbe652671abdfd77258a392",
         intel: "7f3f1d16411f092810af898f14e722fe170ad910b72caa266b7bbcbe2d15d400"

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

  binary "bin/lw-scanner"

  zap trash: "~/.config/lw-scanner"
end
