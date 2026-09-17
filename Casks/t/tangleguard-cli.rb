cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.15.1"
  sha256 arm:          "54c8c8bb13616e3e275545652a2e64e5126472ef3c99b14de14a0f44fe726273",
         intel:        "db6068169ec15cd1ac2cf7bf445f9cf3e75f20274c5231cc498b0f86973d55d7",
         arm64_linux:  "f3389dc86635b82aae0eb2ff52ff2bef1f8ff9475561a044361c256f7197da64",
         x86_64_linux: "2583dfa5b5b734061890eac03cbff5216a16e6d7133604fc5dc6b526f19b437c"

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
