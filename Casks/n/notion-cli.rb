cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.31"
  sha256 arm:          "b83331f482c43d109e5f5c48b8c5f3c3bf63a06f06844437193801e8f23ef1d5",
         intel:        "15dd7b5475568b4230c3e64233fca4a494f9d748c40403c55a2880604bd81458",
         arm64_linux:  "0b833b776bfd4fb209f838f02956950f91c282deb54e035b7664abdc05b67544",
         x86_64_linux: "05158fa909a5f442df158f2a24c12ce4b1abb9f99046c3aedfb471b305d18c68"

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
