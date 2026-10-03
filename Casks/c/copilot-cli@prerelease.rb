cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.92-3"
  sha256 arm:          "866437c532556792a305d90f89f6004bc841ae61178e1ee526a37eb444822809",
         intel:        "35bdcdc24f170e8bba2be61bcea7210145030132f0b5aa4ceaa7d737f48efd72",
         arm64_linux:  "5cc7165d69baff4f2dd3ebeeaf18c5cd2effe814c1950a96b447b2cc655b0bde",
         x86_64_linux: "1110446699002599c29cce12b0b13b77bb87fc62108d4e751fd0644eb23d4883"

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
