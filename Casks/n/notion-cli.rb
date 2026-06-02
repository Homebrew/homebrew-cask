cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.15.1"
  sha256 arm:          "7f1a350794f29e50fe29afb137df0d4d4e8273ec5bab1f1d33cd8e7854a897a7",
         intel:        "845b0ce52e59a988e981968381e4e28c3a4d6cb669f79bfc4ea672bff70ea884",
         arm64_linux:  "79d00fc6327b3b006e40a302b0ec32e447c32c5a571a3e58c77e68272915b3c9",
         x86_64_linux: "b36aeff24335e8b3f4721366cd5d82ea9b61a7c06183209830332d1c99fdb119"

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
