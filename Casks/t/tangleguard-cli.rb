cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.16.0"
  sha256 arm:          "7b18ac42c0625f5b9c7474dc34daa078608e4bb9260ba574d079abe5f3d57eb4",
         intel:        "07f6d5cb4f4ed609b293ab966d577c61d167d077eb5bcc82591bdb063269a69f",
         arm64_linux:  "cf6cce0dd4cdd36174a185a434037d1dbef5427fc470ad87aaa136d5c84ef732",
         x86_64_linux: "a012da2c6840c4fb9b15473e4effc061c645ef027cf5313b95237956ead99da5"

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
