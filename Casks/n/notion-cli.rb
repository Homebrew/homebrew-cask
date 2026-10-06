cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.19"
  sha256 arm:          "b0bf83be5a518b84ddbd0b3724e9a269b3a80d20133e4f7be1433ee13b8b5330",
         intel:        "43089fe9b5a3e50b0d1b583b5e1103cfc8fef6b585858e9be9773a143d0f3392",
         arm64_linux:  "c695d5e3d890782530282631311e2260109ed39059ef46f37d2f20e0070c93ed",
         x86_64_linux: "8ba9ea63981d82265428607df1b5c08c541afec40f7d156a2ac7fabcd06d4ce0"

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
