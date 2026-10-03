cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.17"
  sha256 arm:          "99eb619557713038029c3c5e35348a17ae9c6e0240046a431ce954ce102b149b",
         intel:        "873bed7c3153e579465e01f6d29b0135cea51b55f6e11d1f01de30683a6ec82a",
         arm64_linux:  "48763513f64e04f90ce5104b89ebd09426247ffb6c276f3dbb4d73f5eba5672e",
         x86_64_linux: "fcb4ed1bb43b7a4651ed4198110eb79a4116c060fd11de9073cd43889efabce4"

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
