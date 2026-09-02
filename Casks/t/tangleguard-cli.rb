cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.15.0"
  sha256 arm:          "aaf892452cb20bba2a788fcd5eebfd33b5c2e6408dfc14badec26c3dc1c7dc7b",
         intel:        "04f99dc28efa643147bde828383ebf43bd3c23c35d0c271c768b23498ce10aec",
         arm64_linux:  "7c0d928a865738c0f04312fef93cc0282dadcb083f8cc10f73225acf7060cce9",
         x86_64_linux: "1434f3f1ac4dafc190107eaa72ad9ced49cc9e4a57170f6b3e3ff49b76db8508"

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
