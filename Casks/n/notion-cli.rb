cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.19.0"
  sha256 arm:          "48396ae5d02ea378d129cb8f9840680afed10fb48076b33b8d22e42cfec2b0f3",
         intel:        "96107aa71aadc3e08cca0f9d44d3faab011a621983656ffd9fc704c96bdbf520",
         arm64_linux:  "bff5b5de40820b4c5a4c89fe214c2b94a6ead2363b917c60ec1bb26f1d14321f",
         x86_64_linux: "0c2c30a8242f3167e98db292d14f383ca1fa28b5999acbe7313863db1f5b50c5"

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
