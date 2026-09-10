cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-4"
  sha256 arm:          "6efa73ea716882145cee49575a60e87ba510cab1bc5ecf366e3f5d062b51384b",
         intel:        "2f8233ab2a5fd6209b90f75a53cd6e31626fffb112d95fd05c7834934e269742",
         arm64_linux:  "f4ecb3a36f5b8f2bff67032020c68a3cd3f671d6873c9215a0112d99df73bfaf",
         x86_64_linux: "0505274eba180bb10385f38b557a71ab915da11fb5cdd62322ee6e44ffd8946c"

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
