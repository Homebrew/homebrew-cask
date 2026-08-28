cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.82-1"
  sha256 arm:          "958809e4c46db896d031f942a721e4bdc48041a2d6dfa47116f8f23f5776153a",
         intel:        "304cd092fc60dd06aeaa4ddf5f6b7ee68472ebe6f02d438546b28545fd103005",
         arm64_linux:  "525d4433e2566a407e056810c808e1d587f3a209c56e0a08a39fb6741607f1f7",
         x86_64_linux: "417ff836017a53149473bfeef17e3122e1706c1a6cbdfcd688e5f76f71c2a86f"

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
