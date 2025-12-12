cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.370-0"
  sha256 arm:          "c8d6eabdd211fdfd3e71695a95554f2c48311beb2e3929c636ace2a23a63c6de",
         intel:        "5ed24afd6650b0d32fb422c98decd6a5eb28b4d9f067b9c9392f47003b8706d3",
         arm64_linux:  "f2149f5d5519bc5b8c4978f6a3e2695937a12aaa5ca27c4bb1b156bc3eae8f19",
         x86_64_linux: "6ca3a0b553dbb762f150059a65c84e96d30a9d232614d2d13f46655e17a4ba18"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
