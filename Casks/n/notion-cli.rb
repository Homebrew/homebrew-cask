cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.13"
  sha256 arm:          "de5649154a8589cad4ea932e8bbb8b173ecbe50e726155e3a7aefffa0665c572",
         intel:        "1717a5ccfb88dd1dcb7ee37ed0ed93b1472dc8f6e1e8d68afb339f92f8a563df",
         arm64_linux:  "6e592b47816a12321eda8f7ab7d539bb5a44f9827074e0f2732982783fe97f8b",
         x86_64_linux: "af9f8ee86001547343838eddfd0ed24c6b09eae4ca4d32d5441f5d99aa7730c6"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz"
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
