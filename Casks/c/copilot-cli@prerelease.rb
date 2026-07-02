cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.69-0"
  sha256 arm:          "11c8497770e91f9ec74b7bef24a64f9fa13cf60d87e469b6759cf677ad56b734",
         intel:        "ab1bdaa06a92c66b97dd3aa84b06781ef7531b1642646b83007713711c7183a5",
         arm64_linux:  "2deeb8ec9e89d56ac99d9b63acf65ef5c43056a926949174058c63d9feda910f",
         x86_64_linux: "b8b9d51be9a95749e05e521e79096b8aed3f7307ebf8851e0e01828155cac417"

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
