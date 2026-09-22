cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.9"
  sha256 arm:          "21c2b4ce5f3024a62ed0403d5f6210bd17fc16af44ca422ec69669b5d69d825e",
         intel:        "11bde291beacf068c8306fda9a7631f75e71b44f84b531ca934f15a8a16f8921",
         arm64_linux:  "7d56cb1928b66ad6fc88a132c67ad8794974eb70cf9f8bdb7f48654d48bef3d5",
         x86_64_linux: "22bb4399c93efb214c7a0d69bc4b971c92dcb250972e0bfdc34a4c8bcebd5942"

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
