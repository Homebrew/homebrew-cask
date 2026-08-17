cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.5"
  sha256 arm:          "8dedbfb3458137b07c38e0200c3b96ba0fab515c4b9f75c770467bdd48e00ae8",
         intel:        "250a54df4f5e4a8a67f2b1a4286bdc6b25ba477d6ceda03d176d4cb3a1cf7d18",
         arm64_linux:  "a416220df7ee74c8df92e6bc91316b9b2a4002b9c99fdd4f65c271e5198d175a",
         x86_64_linux: "ec79be517871064838246982c4741051ad0a1214d64892859f0e7f7f8c36898d"

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
