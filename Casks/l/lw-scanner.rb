cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"

  version "0.27.5"
  sha256 arm:   "1bfbf93574b04e84a20bcccbb368c91365e519200d389b4e8b55d016c13f179d",
         intel: "8ec483d31d2a4a46c19a9a345da329ed08110e1717c2924118fdeb90c3d323c2"

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
