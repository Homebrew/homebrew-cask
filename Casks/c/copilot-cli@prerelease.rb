cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-0"
  sha256 arm:          "3ab97569d8d1841387ea8e134df5d58929e53c30b28b95fcab9bff0cff0dc4d4",
         intel:        "bc33f782056e8fc024115450e7907b786ce6fbb092bb6acb123dbb76370cffc9",
         arm64_linux:  "6bb3698d06b7677ce0010b3ab98a3049e18bd555a58d7924ccf7d513d8082c02",
         x86_64_linux: "a1a099dd87977ba36827222b1d81ce91f6315665dca5c9559d8f85d9af90b2be"

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
