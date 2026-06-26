cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.17.1"
  sha256 arm:          "22ee842e83b5a47b1b333785f2f8bd233932e66a86490388d047fa38664fd15d",
         intel:        "6eb18741c52889dd1cc9398e4ea5b9da081e0ab14f00f4c6c0d2afc2624680ff",
         arm64_linux:  "d09a6018eb383eaab5e62b22769c37348d8e0c9ac3a8c0a0169ce56349a98901",
         x86_64_linux: "ba68896f81a6f43c351c1445077a414c01c91198ab29bff545f7c3726019197b"

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
