cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.88-1"
  sha256 arm:          "9a9b4353c77c9760602537cd342acb52de645029046eff980296b303eba4767e",
         intel:        "5546f94c6b46ae58cb4142ee29c46f67c112319e7364b7f667d9cc3b457ceab2",
         arm64_linux:  "985b9818d9e255f332e766b9001a20b59b953309e79901f1334f2830e68aa148",
         x86_64_linux: "042e7b670de58460c4295fd9fbd7618e6233fc6a97507702ecf086823b7fe22e"

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
