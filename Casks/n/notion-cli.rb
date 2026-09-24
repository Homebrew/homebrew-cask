cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.10"
  sha256 arm:          "f6f7c7d6b8247a0d21f141c2b939a05a4c87ad958f9bc6f8273f4e60e69b8bf1",
         intel:        "186c56aed7e293583647ccc4f6843b314164c4ebb64b6f1322df72e026d04eb2",
         arm64_linux:  "f8a9e06950332403680b4b482e2203570c696d51b52c53a116821d4081aa6154",
         x86_64_linux: "872109bbb191f0be8cb98574b8bc73c13c4b5c4926c502fddfe96af26fecdbba"

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
