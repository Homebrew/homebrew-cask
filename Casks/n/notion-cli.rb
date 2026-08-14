cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.1"
  sha256 arm:          "d5f10fb7f44a3475e71b08a555573c2a220383f270aabb1c8cf6a9a44be8e6f8",
         intel:        "74df95f6c0ad3852cee3bbd6c9b5e90598f8bfcdc0d4049b81eb9294fe0d2e8a",
         arm64_linux:  "fa6aa64a13a3929c38bd6a045d3e567aa954157a60a9862a08509a2137ce4a57",
         x86_64_linux: "ce5772910871af143783428a3a794b4ffe69d61726ba33abc4b14fd98372633e"

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
