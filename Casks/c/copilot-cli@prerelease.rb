cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-11"
  sha256 arm:          "e56d71eaf8bf12f147dc23115bfa43e57f5bd6ecdc71efe7929700741ef638d7",
         intel:        "e86a2efcb443a11e741c193177203e91ce845c3f93ea0b17fb601c9fb59418c4",
         arm64_linux:  "28d884655d3a9753409f5a7bcbadabb1e4a86e3b61266d80a9e2e2eae7d10044",
         x86_64_linux: "60b71aa5c4b0d982528a1d5c442ba679d8aa58bc5b6e9997e86f5d1fb79ba629"

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
