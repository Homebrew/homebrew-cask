cask "lw-scanner" do
  version "0.27.0"
  sha256 "2bc25d2734d5f4a69982e9aed670003965505a875b3ea5495e792b6811bade1e"

  url "https://github.com/lacework/lacework-vulnerability-scanner/releases/download/#{version}/lw-scanner-darwin-amd64",
      verified: "github.com/lacework/lacework-vulnerability-scanner/"
  name "Lacework vulnerability scanner"
  desc "Lacework inline scanner"
  homepage "https://docs.lacework.net/console/local-scanning-quickstart"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "lw-scanner-darwin-amd64", target: "lw-scanner"

  zap trash: "~/.config/lw-scanner"

  caveats do
    requires_rosetta
  end
end
