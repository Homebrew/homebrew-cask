cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.15.2"
  sha256 arm:          "0300a7d12cf49d4888e9cd4fc623be93e468bb2c5b5f2e33e8da79c340fc0ecd",
         intel:        "e7f0afae4e8f946c42b9abf632d045c4ad6d5638e5ae684cc79149473089a3bb",
         arm64_linux:  "feb71d47852335018910f6b206dab1dfb22cbf4e4ffa17d127411bb4744ba74d",
         x86_64_linux: "ccb4081d63293af182f986f4893b49eb12815fbf412b3e07f44095788ed21088"

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
