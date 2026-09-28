cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.11"
  sha256 arm:          "80c58c08e6e99bae7daf2d0b71c392a2433d0ebaf39ab08de439d66d9d4149f2",
         intel:        "815f9e983f54e119524f256758370f85159d6973ea6f5aa2df77c6d7830476f6",
         arm64_linux:  "18d469dd4e039d25a4d71f1c47bb7fb187decb5a84d68e9fa2c1d2b1fe7f99de",
         x86_64_linux: "214addf619f09063b002c0ecdb98618c7fb86db071b549f37c75404ee34665f4"

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
