cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.9"
  sha256 arm:          "a9cf7fea940f480657b8880d59090fe1ea1978a5e18e78f2f4acdf69209dd0f6",
         intel:        "97506952de94c4f723b5f113236f421aebcd2cea609e82a0dc2822414eda2900",
         arm64_linux:  "80aacbc6cc055f06459d4e8859ca9e404cb69c87d94f30ef8406682b684fb2ab",
         x86_64_linux: "f18d6de6318ae23de8d7822956b0d817114ca1f314791650a03ab1324ced6320"

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
