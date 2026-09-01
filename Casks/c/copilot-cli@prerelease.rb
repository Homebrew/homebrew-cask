cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.83-1"
  sha256 arm:          "0a27565408b6032edec80a306a29b5525d4e7cac357692f5a26fc046b5fbbb28",
         intel:        "5edb6c23ffc6a6d3d36331b1acc9e03d9e828d1e84c5527cbe1ae6cb55efa2b8",
         arm64_linux:  "32ca05f2bae5e57309c17e6d6aee0f7f92ebe3268fcfc3ba718e052003ca597f",
         x86_64_linux: "b36580e2792955fe75c129d1556fb64c97b7701b9a08bd09df0457a26a4fbde3"

  on_macos do
    depends_on macos: :ventura
  end

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
