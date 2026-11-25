cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.29.0"
  sha256 arm:          "ea4d064d145cde1838a1889b7cabceabf6773e247cb8769714ee5dc8a083fa45",
         intel:        "c96780375d80408f385f8be48fbed6c66fee60ddbdbed04d7a12aedec18281f5",
         arm64_linux:  "81451f02dfd23a7f3422aa3529a65079399f269b08a63a0d37bb29bfb938d388",
         x86_64_linux: "7280ddf6745fb514c73185605845268b59a2c98da4c35d289e400d2d7e806df9"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard*"
  end
  on_linux do
    zap :not_required
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
