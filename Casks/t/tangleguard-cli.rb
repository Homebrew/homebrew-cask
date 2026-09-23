cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.15.4"
  sha256 arm:          "936912fff62e33e765364025c8830ebe32cb20c62174115a23d81dbba936c73b",
         intel:        "cff9e6817d769451edd979ec0e6c3999e6099941e1a1795a74dd85baaa4ae12d",
         arm64_linux:  "a5bce80bd72da401c52c57366fac34ca96ff4682f10b81426c779a92da02a703",
         x86_64_linux: "822c7713199d3ab87e7ac962a9d33db74de39efaee3021cb3000b08a3318c7dd"

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
