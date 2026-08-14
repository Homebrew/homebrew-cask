cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.14.0"
  sha256 arm:          "a69c9efa67544a37b838ea4bb7e0daa7d3517dd35a7a78be679295a3d9aef6c8",
         x86_64:       "c6e4a4896e2625f8b34ec8c24f4bb4da51d3eb964f9c3b3b562cf6756e064d00",
         arm64_linux:  "58a5ddc828f58323e502f57c6c37b06b0163a92dd9f4db4fb435d65ed7703859",
         x86_64_linux: "7223bbf72164aa412c21f74ef39e0918e840b85438874f1b646ec3771261fe6e"

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
