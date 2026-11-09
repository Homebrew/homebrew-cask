cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.28"
  sha256 arm:          "9755caf9feaaaa262b00da84d94d0571a1e7dd554c8c53192c0c39e39e0c6643",
         intel:        "11de9eb9fd28e0497db0d05e9c358c43ccfc3d909593ae56575d328bb80f5471",
         arm64_linux:  "c5cb2adbab714bbc0dcc83a40216fbe31cd742df97f91cb7294ad1531f752931",
         x86_64_linux: "cbbdc03117b786c31e1c9244f88d5358bef2f90916fecd9c2e0603adef02fb64"

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
