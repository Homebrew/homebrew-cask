cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.11.0"
  sha256 arm:          "8759b5d6e4351166704da156809f26bbdefa0e48a624c799118c6f844f1469db",
         x86_64:       "0d1ca5713b91f95a96bed524a3e0672fd48aa50fe104a8e7e1af525cd65ad5ec",
         arm64_linux:  "5c2194d5480757c8be3428a21b5859de3926ad31d65b00a3d6bb35c8dfb4977d",
         x86_64_linux: "14218242ac9a8e56de0ac70b0bcf43f619fb369d40e5eb78de3e2e8c83b220ef"

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
