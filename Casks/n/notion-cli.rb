cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.14.1"
  sha256 arm:          "458eb3a7e50b26e2a45e60475902210e54b14812e23c64142489409dd2966c32",
         intel:        "3bc751cc9cc42e1dfceb927bd6debf800ef671c98d6deee264f48f9ac6979702",
         arm64_linux:  "49b3674d2c017c0e9291af82c0425ab7c27e8da066a1cc98a863213986afbb83",
         x86_64_linux: "5773820dccbdbf362c2cc5c0ffd5af3e0d4a244e404f80cdff66635633b8e64d"

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
