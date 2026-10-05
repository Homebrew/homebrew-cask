cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.21.0"
  sha256 arm:          "8ec73800e27b48be8e12ca684ad5ae158567c6e6ca25e2ed12c3834913b9a2b2",
         intel:        "0beb9d6f0c1044ba240c2a60c97bcf49e5eaec6dae2d2786dd187b8153f9fa89",
         arm64_linux:  "98c4d65beb6e3e3352fe410d780178bc2c2dbc32711399bd7c35967c40664f87",
         x86_64_linux: "194238eb6202f1ce76477008ee9e7d9f9e06983bde17d5899fc49ef8c4246f6e"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard*"
  end

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-#{os}.tar.gz"
  name "Tangleguard CLI"
  desc "Code architecture context for LLMs and humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "tangleguard"
end
