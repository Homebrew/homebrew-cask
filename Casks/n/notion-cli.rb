cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.4"
  sha256 arm:          "169975126115aa19bc7bf08a22048af32319b2a8edda5070c6254aa27a103b86",
         intel:        "184c0b97034761ab482456e3fb98d20fa5b02ecf7745d5bbe7f88897179589cd",
         arm64_linux:  "f8e4de5b4cf3e643eeb831eaaa2270f32f565513d0c30a0a9dd72a5acf3cf72c",
         x86_64_linux: "03fb14eed36dba6e1d2a33ca1616e0f586fc6438cf6c16f854e9fde7a8f2b1ea"

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
