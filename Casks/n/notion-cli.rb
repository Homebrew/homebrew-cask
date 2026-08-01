cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.7"
  sha256 arm:          "215380e8be24e1ba8c9be5d2a89ebed0bd6baf3e1de1876227d14017382df947",
         intel:        "0e581fcba0d49294a51d2b8981c5609205346ea3727372b39d519bae71e29f0f",
         arm64_linux:  "eff6c72b081937155246d7f2a9d0aade2755e38d32e045fabf3a88eaf4c71360",
         x86_64_linux: "64f7c72d0ab0cada352aa7cf752a815a1b69769b6123d655502c6526c2250733"

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
