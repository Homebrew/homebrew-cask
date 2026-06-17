cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.16.2"
  sha256 arm:          "5517b60d9ff17085361ac3101e829920b7ff1f73212377186ecdf2776a81adb0",
         intel:        "06b372c1bf42a83947b084a732ee11a283c639b066891872a167ea75f820f63a",
         arm64_linux:  "ed2a809bb352b0e2dd2df7442d0cbbca480e08d30a8918ba6b0b688d20913da8",
         x86_64_linux: "1bb0f44fa40242bdadce31fb4c47b0085151b0c53ed52d82de85b3aff28dbd0d"

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
