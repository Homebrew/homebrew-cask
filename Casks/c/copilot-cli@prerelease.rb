cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-6"
  sha256 arm:          "d2eeffc606d7ae6b7a2878712b632cae68a61152b9d07891a9119b45f14a0b40",
         intel:        "f481f8556ae102385219aa7cb5cba765dfae40f69a070cc9e7aaf259ffa259ef",
         arm64_linux:  "96219feb224712cd7326b7c22838e4448cb4aef50767f76871110972d822963b",
         x86_64_linux: "57c72706f4fc4337a7fd15bee17375620a2affddbc3fa736b6ebc36027b5d7c1"

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
