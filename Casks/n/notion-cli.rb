cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.20.0"
  sha256 arm:          "d42a784b4d350638820fdeea29e9088dbef4f8af722f54c7cb2f86094a6e398b",
         intel:        "cbb44d387c884c4367f194d4812c739c052e6d3977677103ff4c6096b4e968f3",
         arm64_linux:  "5696f1a6cacd633029b9d76c32d77fba278f2f2343e93b71ce91d2187307b9d3",
         x86_64_linux: "a6a294708e76695d4c44cebcdfd68d52e0fc38cb42bc589ba62b5bafed19638b"

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
