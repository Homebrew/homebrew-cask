cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.10"
  sha256 arm:          "9251acacb6c3bd4d2637e372eaf1197e1471b439c1ed3d841ff084fe5b072ad7",
         intel:        "677c3102321a1d14b6e21a7e1d307d3404abec06261813cbb5023d0c49c6ba67",
         arm64_linux:  "5354cacdc6c51726f7afab437055ae1e4cf8f18e4024208b23d3ab156c16dc28",
         x86_64_linux: "32080fcfb46ec5bf594f848aa800bc0c672f4973b51190bb0f52850d4f8e9d40"

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
