cask "aspire" do
  arch arm: "arm64", intel: "x64"

  version "13.1.3"
  sha256 arm:          "5d0236757acb1924a140b8525735819a17ce63cb6ff6afd59b3043fd72c1ab08",
         intel:        "e907d9bea04cd61e46a8256847e829754283629be0d1fb93c4084f633236d994"

  url "https://ci.dot.net/public/aspire/13.1.3-preview.1.26166.8/aspire-cli-osx-#{arch}-#{version}.tar.gz",
      verified: "ci.dot.net/public/aspire/"
  name "Aspire CLI"
  desc "CLI tool for building observable, production-ready distributed applications with Aspire"
  homepage "https://aspire.dev/"

  conflicts_with cask: "aspire@prerelease"

  binary "aspire"

  zap trash: "~/.aspire"
end
