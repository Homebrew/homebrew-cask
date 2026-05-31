cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.57-4"
  sha256 arm:          "958468242062c8026e36da93fc052bd07e179b4e563eaa8e44758e83152b8dd2",
         intel:        "dfe3d19b0cf57ab826921485d9fa3dee3255be95ee9f8df28fae3333ddb72831",
         arm64_linux:  "18155e74b4a9d745975120a2f88535b3593146583baa6a37889bfd4e25a18329",
         x86_64_linux: "e74ebbed9f0cc868dae84a83537f7bea315544365957783ff3e7811bd9461309"

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
