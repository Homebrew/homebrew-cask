cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.90-6"
  sha256 arm:          "bfab4eb386b0e87ba5a7c3b2441ba99a95988c4ec652b689967785d71423f120",
         intel:        "79b3db9fc8b8829d76c12012d792af41c675e8356b479a25af215e9c94653de5",
         arm64_linux:  "a2aa0f8af8d5c84aba6aae61cb28602d72907c064596da19684925c66dbe8c13",
         x86_64_linux: "1c6ed8efdee77b3b961ed7e0a4b97771b43c010df11b87198bab40077a203a75"

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
