cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.6.1"
  sha256 arm:          "293754c6babeea421dd3aabdad0f077e87437ec533b421ad866b455c636d1cf9",
         x86_64:       "140dffc2f730bfd24144e1daf876c225e2934976b2d4fcf246f0ed7270a90e6c",
         arm64_linux:  "737b1f0147abcbe55c128bd305f217a5431034ffd20524e3e2a41eff0d212736",
         x86_64_linux: "3199295b52ee95c6eab58d8b63c444fafbd06cf618052ada808697fb759f2c58"

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-#{os}.tar.gz",
      verified: "tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/"
  name "Tangleguard CLI"
  desc "Codebase Architecture Context via the CLI for LLMs and Humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  binary "tangleguard-cli"

  zap trash: "~/Library/Application Support/CrashReporter/tangleguard-cli*"
end
