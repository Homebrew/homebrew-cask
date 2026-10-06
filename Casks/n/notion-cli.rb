cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.18"
  sha256 arm:          "f82c1d6f4b0bc4247d523b3a92b0498e61a42a44f336e8d64e7183f75b611ab9",
         intel:        "7bf96c7cc020dfc62dc2b4a5c2d467e38844b806c141fc3c6cbe3192a923eaa1",
         arm64_linux:  "5432e729d90f8799121dcdb406358483192b125782312aedeb88d4f3ef1dffb4",
         x86_64_linux: "2496e1cc6492f1731d398b9073ebf8b37552c2962f7a91ef11d6aa953443d635"

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
