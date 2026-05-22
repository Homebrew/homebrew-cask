cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.52-1"
  sha256 arm:          "6e55dc57519523deb0bb07a7963902efec06988064c1cc86a00b09a0fbef31d3",
         intel:        "551e36b14b4cd619d9cc1806b33bf64713b98f14e376856463ebc2ef9120f5af",
         arm64_linux:  "eca2089662c4058c44214d50fc8cd381c0032f6853b6f37e4af7c492fbaed1f3",
         x86_64_linux: "bf8f0ba40ea51b2bfbb5fcbdd5546f31c6778d04d0cb974efc314c0ca87c8762"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "copilot-cli"

  binary "copilot"

  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
