cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.1"
  sha256 arm:          "2d231eb846a40634065dbedd34841323d3e9e82448d2a37c238cf0b4115a51f2",
         intel:        "286730dd7865a7cf50c9535328f53533a1bd98c47b7f789751c02629896473bb",
         arm64_linux:  "09f1b1a3b302f52d7aeed4073ad755fb32b082e9d7f9cb5b75dcf63344ba44b7",
         x86_64_linux: "ed22cef900e600d9b22af231a6acbf31dc4368e7d72c848d023b126cb4680a80"

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
