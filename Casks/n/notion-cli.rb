cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.23"
  sha256 arm:          "dcc058a41ae86541701073c2902ec2ec5b5555810afa520b9f395b0e902bdbfd",
         intel:        "1d83eb8b9f1c189694ffeec6e362200c77450e0f4864451dec4aed9fa3a44608",
         arm64_linux:  "938bd08b7d471b4d797e6378bb50cf74da6b27c002612df2434cf1baee92378d",
         x86_64_linux: "11e691a4328eb59d692530697502c75e6725381f18a99c5a6cf908a8f5d56637"

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
