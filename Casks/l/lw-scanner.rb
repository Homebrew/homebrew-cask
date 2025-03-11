cask "lw-scanner" do
  version "0.27.4"
  sha256 "4e396d5caa651b00dfc764c2481d7a0a545d1dc4cadaba68e6bca27247142549"

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
