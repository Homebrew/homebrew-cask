cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"

  version "0.27.7"
  sha256 arm:   "c98129c6253adab2498586bc22959336215df75515c12a50f55ceb98313e4b27",
         intel: "9613d0778433dddb3210217c03ed0b073906514e2a1a591c3392a8f20807a5d7"

  url "https://github.com/lacework/lacework-vulnerability-scanner/releases/download/v#{version}/lw-scanner-darwin-#{arch}.zip",
      verified: "github.com/lacework/lacework-vulnerability-scanner/"
  name "Lacework vulnerability scanner"
  desc "Lacework inline scanner"
  homepage "https://docs.lacework.net/console/local-scanning-quickstart"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/lw-scanner"

  zap trash: "~/.config/lw-scanner"
end
