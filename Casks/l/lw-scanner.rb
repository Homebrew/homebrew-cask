cask "lw-scanner" do
  version "0.24.0"
  sha256 "a2bbd9b615143ca1f63824fa335d49da9dd2744a58776bff1c9a85e6bcd3c34e"

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
