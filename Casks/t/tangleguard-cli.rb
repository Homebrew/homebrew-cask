cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.8.0"
  sha256 arm:          "0583fa6a31ed3710efe38d47dd4dfb3a46db4642c241470ecc7d1c2476a343cc",
         x86_64:       "2c56011b20738219a3dcb02176ac74dba8a3624abb12325a621991a8b7914379",
         arm64_linux:  "0286ec89119c7932e060479ee1c5cd6a21d048d8c3fb063bca8237e93da61565",
         x86_64_linux: "4fd9863cf6f9c1e9c8ea455cdd42f5c2a2e6247278f25caa303a8f81ce78c08b"

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
