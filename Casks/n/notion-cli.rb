cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.19.1"
  sha256 arm:          "821a01d18ac3ad09263cf4de901babc2ca71b9e49dd686c80d07c7dfdfe0cdb8",
         intel:        "63954e5d38e6c1d4d9dd36f04ba9671a63a9cf121b12d448fef27b9d8c842947",
         arm64_linux:  "c509b8c73baa403ecaceaf67968dc5b21957737b74831b6129f16fb40b31d00f",
         x86_64_linux: "6216ef886adfd262cb764b5b76a60d090a2fa26fcd8dcfd4fafa596e5b53e09c"

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
