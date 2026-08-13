cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.0"
  sha256 arm:          "6c3c2806f0f95c764763a1a0469647de2385bf4cc39c6c6b7e73bd878fda5d6a",
         intel:        "7c43bd8b6c64784570079d343b6e1c3aab3c1fb940d9bc531e556f959af34fce",
         arm64_linux:  "f45c178ab78cf387ea6d867488bdbbd7d703fc85ca02d2fadb6bb6cef82e160c",
         x86_64_linux: "9c8a27059b780f927834260edf63416283ea908fe909fbdc35e7009e41716950"

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
