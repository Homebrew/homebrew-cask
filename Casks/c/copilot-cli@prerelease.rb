cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.101-1"
  sha256 arm:          "0f981f8c448d0cde9ab22cc8d8580c185f3dc25801c96aee73f829efa408f321",
         intel:        "b6cb619f84b34b842d5b33935b36356507c5c79e363d03626e925660608e81db",
         arm64_linux:  "009f2161f07b2c88396a797b5e3f204bfd4e74f63c9f4c9c8066def5d130472f",
         x86_64_linux: "785f4c263fef26bd882da54e94239c3a0c8d6be106963d56bee5ac3a319ca77b"

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
