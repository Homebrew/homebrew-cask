cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.10.0"
  sha256 arm:          "f94fce4cd275032bc6f75c069bbdd9819b27840a3303afcb4fd484225f40b16b",
         x86_64:       "c3d3e6575cca784de524d43eeb44b38dd8b046775c3980c9c16140efaa8bae71",
         arm64_linux:  "6a2300d0cb602007b36a7f16f664442a0ec3a4170fb1aa11bb338f1f094c54b3",
         x86_64_linux: "bbb80350a565ba8ca01ce0faf960473d4ccb865df2a20488dbf72ebb087cd0da"

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
