cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.21.11"
  sha256 arm:          "8f2553b09b92dae6a3bcbe0d760b8a671a4a515a2c9462d81f46cb54aec6bd15",
         intel:        "abccc2fc91de4b4e271ada75fb4f6d9a09780cb8f643401b2b16622d0c335b1f",
         arm64_linux:  "c29387a6dd8defa53d209e76ec5e58566b3645165e240e38fa841e65f4abbb75",
         x86_64_linux: "47ff7bebb530808b47d6082c79985ad35ead4cd85c9db0950c435b431ff2ec3f"

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
