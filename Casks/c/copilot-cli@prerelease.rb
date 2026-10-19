cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.101-0"
  sha256 arm:          "49e976afa8c856d523d4a1ef606565ee8c483430df68bf00eb35c23cf857b4cc",
         intel:        "c8b74038772efa3d90749f56eae0cf84b16333ae337b62326cd8805aaf3059ad",
         arm64_linux:  "013f6e1d05c70882f0fa5d13a75b7538e21a515475dd0c6d53ca227e7629c3cc",
         x86_64_linux: "52979af4b49fea2e657a3ea9eeaadc15022b63aec4012a20f45b589538280d45"

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
