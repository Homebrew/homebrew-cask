cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.8"
  sha256 arm:          "d17282f0f7caf7d1f2d934f2a28237b0ae5389fd1d26fd3ed56d2c3f69579a81",
         intel:        "f25c508fbdc4528d0b43e87ddd32554b60e6631678d8f4678d87b325ccf37721",
         arm64_linux:  "8f1b8faef4afff4dff0d9ed0a0d2ee6166b8a3b83cc448ad5cc8b310ae6121d3",
         x86_64_linux: "fb644a127b77dece922af869acd5a76b74e3c31e367fcfbf97cf3864874f4763"

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
