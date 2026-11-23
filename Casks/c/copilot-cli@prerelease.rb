cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-8"
  sha256 arm:          "1821e444610945c3a58da4e59bdd417822fc0ce29e0a06d1afb0ec2730adb99f",
         intel:        "98ddcd5e67e1ff37ba586ee6e5429ddc4512bf1ed77837a0db8eb42f0556c57a",
         arm64_linux:  "ac864012de1f98d58d35119f10b9a2099a1060a232992618ee895827e0c536ff",
         x86_64_linux: "2290dd094e6c7e29a22d764da0e0f2aaedca51a15ce53bc2f870e0cb3a493489"

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
