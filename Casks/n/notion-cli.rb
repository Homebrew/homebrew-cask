cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.5"
  sha256 arm:          "c8ab89776dc9fd6db65965a57cd1f681d092c8945b953f6e18466c6da9c0f1a4",
         intel:        "4712c5dc994aab7247c322f99fa4a4d1664d0faf4c0f40dc16b6d286274b8800",
         arm64_linux:  "2e3c99eacd1e3666ea9a1fe3656590994d8014880a65d5dd7f240f441a2b13ea",
         x86_64_linux: "6742d39502f7fe8ccd94b35bc0e5444cbc1ed9d6d123b8cf2c197da33738ac50"

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
