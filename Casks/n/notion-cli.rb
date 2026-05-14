cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.14.0"
  sha256 arm:          "78eddc77c63ee92bf6f71a864b67875ff9d656925eb98b4b9f4a9b1a9b746d3e",
         intel:        "714683c273459d39b799b3b7cb535597efae74409f9827e636ee02a2b6beb3bf",
         arm64_linux:  "31d0931ddc1534b215f483689dde3dca93e2b80cede0da6839bcc30489f7792c",
         x86_64_linux: "d04fd8a4be7843be0875e42ab4b839d602b353116485dd106f0297a4ba64207d"

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
