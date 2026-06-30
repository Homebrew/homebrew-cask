cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.9.0"
  sha256 arm:          "59ffa074b92d7a6896e31df3b72eaa84d01cb6a60ff1f5a047c08c14d60f86ce",
         x86_64:       "0282bfe5b087caf8bc434bb708896fbda81d4cadc57f54efdcda11a3803779bd",
         arm64_linux:  "a87cc9ddeee55f3b4c81ba96af527722525a886ad85c39ab935ba7dd2e70f1cd",
         x86_64_linux: "daa649483ffe9ae6b060125928ae3d53982bbf87c63f7dbf7ef92d8b682ea203"

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
