cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.16"
  sha256 arm:          "64389bec7d063cb21d6934c844b903f15734749da624ee34e52769a29e0c6092",
         intel:        "7238e5b308eee3a93782855014ce107d77824cae4fe149069f5b49d11864f102",
         arm64_linux:  "9fefb03c7baf81acb2424a6d7dfd8db0a7995c07f17e53e92da5fc819473957d",
         x86_64_linux: "d9765bc730131755d962d7d3854dfb6820f686007b881ec3bd8ed1c5d791e116"

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
