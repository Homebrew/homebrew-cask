cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.105-0"
  sha256 arm:          "f5c4f87228d331126fde416241b83a7fef3ee6138d6638d6190bc5ccee29a642",
         intel:        "ffb0e7de42146ad8973e2c166161e3906db285eaa417f57f72468717d7598b94",
         arm64_linux:  "73bf9664885e486d0b9dc9d36d7a6381c8ced8520e4f64ac49d2c7b6a19c39d4",
         x86_64_linux: "7603ee61af445e3e0bd856029858b8318ad1989c03ffc7f7653066fea591e2d1"

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
