cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.17.0"
  sha256 arm:          "2514bc924db46e19da9acee149925bd1597c71c48a6321dfc610c4d37a298a71",
         intel:        "aaa782b9ad0d74de8cbc23a44563db2410908857ed26a53c3fcd8a5caaca9454",
         arm64_linux:  "68f618bd45ebb7415da4f6326b6bdc1c6bc709997b1af94c98ea13d1755b8452",
         x86_64_linux: "3b0f875ed3294252ea83a1940ad2ebc8a638754acef16232019d7d0d4ab52287"

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
