cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.22.0"
  sha256 arm:          "db5cc33a3e657f698840137813953a2968a0a282afcb88be897f5af443366a09",
         intel:        "b07c86bdb50eab67578295da1df55082ba4d22dc6383c323fc549a3905d86d48",
         arm64_linux:  "f2b605abb1b8fd71212592a8f8fb5aeac46c88666787891ccdb08f43c5dd6719",
         x86_64_linux: "7f848e1b3cc4ab9eb5b41545c264128e6ae9241be6705fe3cbcff28bb740ff21"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard*"
  end

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-#{os}.tar.gz"
  name "Tangleguard CLI"
  desc "Code architecture context for LLMs and humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "tangleguard"
end
