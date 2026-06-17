cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.16.1"
  sha256 arm:          "a468d7eea51498a50043b7114f71adb4db820386990792f7dbbd1ff22983eab7",
         intel:        "6d45d9f28c780de00dd30c3ca78edfd6f1e110019f2067fcd0fcd4325fb2fa34",
         arm64_linux:  "b60252ae3430554635e59ebf9efa1f910881f6e76131ba0d3ef4e2a403e66891",
         x86_64_linux: "0b836676ac23db6ef8806762c1e4e4c4564fd383d44694775247a88d9e9e8b89"

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
