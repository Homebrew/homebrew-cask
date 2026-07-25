cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.2"
  sha256 arm:          "461ead068879f4c1c59763c133adca5dddcd442bd04fb5e3df01165ef4b4877a",
         intel:        "e7741fe9174f5f36a47d47fef788393b498ed2ae690b91e8c08ca2b52cee453b",
         arm64_linux:  "3ed9c173f59b02c400e1266d06e3f73e75de3670d1a278e2b93c5fb384d3a841",
         x86_64_linux: "80559f9cae115068845d5b6fcde29e2f37ee83f27fdf4b8243082b5bfc779741"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz",
      verified: "ntn.dev/"
  name "Notion CLI"
  desc "Command-line interface for Notion"
  homepage "https://www.notion.com/product/dev"

  livecheck do
    url "https://ntn.dev/latest.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ntn-#{arch}-#{os}/ntn"

  zap trash: "~/.notion"
end
