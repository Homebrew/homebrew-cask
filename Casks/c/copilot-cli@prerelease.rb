cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.48-1"
  sha256 arm:          "f0a17a8c4e646eb35355b2356660b7d2a4e7acd88fc0d81fd2ab1771193af26e",
         intel:        "ca77753fd3b10d4f337d07d23134c5579e295d27bfd570217ead33e358a3d2cc",
         arm64_linux:  "1b995c089038e87d0a431d1dbd206ebb14a2dc15dc8d445fea43629c43842c4d",
         x86_64_linux: "de6518dfcaa67e0812d19800e6f58952f726c7112d51edad871b5c5f65fd902f"

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
