cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.15.3"
  sha256 arm:          "ad75b05528acea99c52c589510a679600bc600721dfe3b62f0de262f8176127f",
         intel:        "b2bccfbceab398ba45b1cde57f89e3172d135eccdc10db66fc0dc9e1b37f3d23",
         arm64_linux:  "393d455e35f53ce94165c96b5310c4c7e913741c654b2b1d29311307b6154d28",
         x86_64_linux: "7247a06b443a3de9e64ecfda92a29daedcd129a6c58962ab4de9088676d8e17f"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard-cli*"
  end

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-#{os}.tar.gz"
  name "Tangleguard CLI"
  desc "Codebase Architecture Context via the CLI for LLMs and Humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "tangleguard-cli"
end
