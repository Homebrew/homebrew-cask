cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.6.2"
  sha256 arm:          "225dbd2092c3270f6d4015f9a3ec5acbd018e3ae833388a1aaf60748cfafc47f",
         x86_64:       "4c2aa57a506d9ff19d771362bfc844a988849e811431a0b1bf2e09c2b69b16c1",
         arm64_linux:  "09e2651b67a2756e34d1ecae4be5ef6bfa32ee538da303112e66a8bdb099c159",
         x86_64_linux: "2befa9244f9235b8c615af76ec0cb9e58ec20fc683f23f39d351017db854c800"

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-#{os}.tar.gz",
      verified: "tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/"
  name "Tangleguard CLI"
  desc "Codebase Architecture Context via the CLI for LLMs and Humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "tangleguard-cli"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard-cli*"
  end
end
