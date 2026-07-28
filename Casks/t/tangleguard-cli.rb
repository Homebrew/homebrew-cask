cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.13.0"
  sha256 arm:          "e36e4bb48b2f962aef26b187568fcf66874bb9b456b10679b5591c313b4a3651",
         x86_64:       "38ad3fdbe0a2f5757af3419ce067ea18a8a65662edff0600dc25031c0517b4f9",
         arm64_linux:  "c4412246b750d2cf8c91d71a3e240a65896811a616e9594a4cdda784ee8bb716",
         x86_64_linux: "e63c160685e64b512ac68db0b22ac848165e12e44b4e240b5fd9fbfe82503259"

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
