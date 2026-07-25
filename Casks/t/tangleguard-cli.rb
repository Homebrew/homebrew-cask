cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.12.0"
  sha256 arm:          "c11dfb64b495d1c5457cbbb811c12fd7a1d7040fe3e83fb16cc1b4f27e015b8b",
         x86_64:       "77b54c34920ad562210de0d6845bc13d24171bd9610b0b090f82c2bddd6b174f",
         arm64_linux:  "09a1c22f87f538a738cb197c6a6b1c3a4dff39d8098367b480c5797a4d56966e",
         x86_64_linux: "e3ed587f290ae3c6ba1908995a142a5e809ed1e1d934a110c4984457518f49e2"

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
