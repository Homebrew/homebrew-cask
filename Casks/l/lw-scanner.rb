cask "lw-scanner" do
  version "0.27.5"
  sha256 "c0da6b375ae60f80370b2a64347d390eb5de86ae78844e28844b9daf71d955f9"

  url "https://github.com/lacework/lacework-vulnerability-scanner/releases/download/v#{version}/lw-scanner-darwin-amd64",
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
