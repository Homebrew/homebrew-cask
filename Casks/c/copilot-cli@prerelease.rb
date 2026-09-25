cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89-4"
  sha256 arm:          "2d2a5a2e4ff1b1c47839b7b69a10d05012cfe0b672be159e2936ec31d3c0f3b6",
         intel:        "a8cc18180adec8e62314cd3109e8b16400e91270e805827cb6601b3d69685492",
         arm64_linux:  "dbd0a0ae283a684982a25a26f3c4c182fcc2147e3b48c63c8b9c1fa1df222386",
         x86_64_linux: "3eafb616320a4c51fc586b6d3b956ee18be28f17ece847bac6269021b76420a3"

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
