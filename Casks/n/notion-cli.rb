cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.0"
  sha256 arm:          "d070526fe7a09dfaf331cfb21d5e6699e5d7600cd0b95c968b5e4aef04241ef1",
         intel:        "bd09979e525b915cb3c551f2dc393c31838f7d27b8658fb1ef31bc1782fe19dd",
         arm64_linux:  "b109eb3fb86730631c543c250dff39aea25797b6ad8f51d7facef24dc1443b04",
         x86_64_linux: "052bec9b43f5167e8a48d29acbeb8a26eb6e0f2d7a5714394d16fae3b874a852"

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
