cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.2"
  sha256 arm:          "c6626ad5d629fc45a60c89b79da43f252d9a4aabb6d951a70619134c038c8a70",
         intel:        "ab9bcf19b7c71d8c9e6bdd3994039fe6e9614ed49da355f433ec00354eaa651f",
         arm64_linux:  "df7250f5e6afd986e97579e6af2b8a78ff769cfd1a8e375545a0301b98d4414b",
         x86_64_linux: "7e63a35c50ef4a03d30916e1a726fc4f19f8f0fb262034ed060646f2e8254a09"

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
