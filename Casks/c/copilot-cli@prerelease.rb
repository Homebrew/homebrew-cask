cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-10"
  sha256 arm:          "7d693bfdc82f1a1223d4fe034903faeb16063cbc0075d0f45e04af1ea7914871",
         intel:        "1fb04e8e040525ae39cf53cce7f9e44b7d3fbb200bc9bfe38e2e7436d7dd3b74",
         arm64_linux:  "c2e091b3133b5ef931f2f142524334cd8421cfe59f8389dfd00012e3e2c4ec46",
         x86_64_linux: "b1b2a90ef35a0fe953b40e6128cd0939a28f38de9fc3d8edec51a3dae416efc6"

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
