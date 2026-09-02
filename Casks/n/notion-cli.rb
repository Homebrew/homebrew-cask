cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.0"
  sha256 arm:          "4f1c899b9f14a853f94aaf9ab72077324ed14eec6b612dae934348aa1c559523",
         intel:        "33952cc3005025ae00a10ca2365e99f3882a692755e767934209ed11f8397c8f",
         arm64_linux:  "40e8560468498e425a97e7642e7b3bae5578286557d831a1585738f765299f09",
         x86_64_linux: "f81c1f12393f9310100adbccf94aab8427cdc1b1d4325dbc686e6494a011a5e4"

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
