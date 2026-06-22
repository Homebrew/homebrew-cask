cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.7.0"
  sha256 arm:          "5cbb78dcfd98970d648dd7d332d54e26e7a6743159323ffa7f6a7c2014695a34",
         x86_64:       "58ee07f76cd6e11308c682b11ab53b53ce0042e26c886271382c601c01e3dd95",
         arm64_linux:  "f77827552816ae631280902d71dd21e0c6ed896ee114987a17266fe2d94e4c85",
         x86_64_linux: "155e9b37dad184c7d9fbb50be845fcb3331f0cf3c2906f01717b77ff64f29fbd"

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
