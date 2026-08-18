cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.6"
  sha256 arm:          "845d6c5f9536630997db0998c9b0e4c32930074f2780c33a3991666985a24c09",
         intel:        "ff1997251f925497d1eb5f8a74a9a81e11510d1e3202d5233be0b2e56d2f653d",
         arm64_linux:  "e1bb4173abf1884edace2c87623f68db30d012e1f0865266c578ee5be86b2ba2",
         x86_64_linux: "83647adcfe181128ac0c52902d6e8dacaf03852388d9ed10bf58840d63114aad"

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
