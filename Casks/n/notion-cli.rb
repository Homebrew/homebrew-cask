cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.8"
  sha256 arm:          "bfce28b432aeb9ee48b8a9dea335dbeeea20c4a9e539e4d56c286c5732503c61",
         intel:        "095c986ab849e565f39115cad8e6bde2752156c95fa3828c2b15b4897c40ab98",
         arm64_linux:  "583a555b7fd3eca5f4ddbf6285110721a294845746cdb06fe582985d5e4ad076",
         x86_64_linux: "f0b4b65cac3d11e08f91fd4b8ce20cc2bc7b257a53f44e964f4803feac939a86"

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
