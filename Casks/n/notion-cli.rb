cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.15"
  sha256 arm:          "3f0ce77cc93b10fc0261921f61dd177ee53ad50a983d119a3e96e5ba433232ed",
         intel:        "13ae47cb60703700f4fdfa6b6fb03a1e1c46d90b3c397d1afc1461677bd083cd",
         arm64_linux:  "9e82242ce8fb207fbcc7d2e18b10dfaa84ca101d4d36666ef700e14cd995a13d",
         x86_64_linux: "310474ac8e06b8ed7641accff50d4a9c0043ecfd34d97451717f1ad55b118e42"

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
