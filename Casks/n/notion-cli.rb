cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.27"
  sha256 arm:          "8462dd847c730969af34a2d8a3d928bdb931cfbee1906c9cb8e9b63c7714d049",
         intel:        "af1fb32ed219831809c9fef1311e9594ee81ae38f050d4903461f759854ce98d",
         arm64_linux:  "5accfd01d3df629c3752b7abdcf4bdcfeac8412e38525cf728630a613f925b8a",
         x86_64_linux: "c805812870e41ea0d14524a3265ea6b829e972147eadd88a89e58450ca10e287"

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
