cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.4"
  sha256 arm:          "ebff9b67ebe143892708ce6f0e444856df7178ec327e9c10905e405c59fa822f",
         intel:        "66e8b1a649e93a58e3ca3b341fa32f4a1ded046cee2259d7a4a618e2e5af6cca",
         arm64_linux:  "6af52d3d3850d1f97799c987cd0336607a10ed86344ce1e77e8e74006bfb855f",
         x86_64_linux: "1c51d75469b320fffc84bbb4e5694a5ddd8affee38b5eb2c3dca4a657fd10aa3"

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
