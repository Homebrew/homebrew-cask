cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.83-5"
  sha256 arm:          "e517e110c16dac8935de8bf9928e0786e9b518151fd6b95db6d779b67980fc21",
         intel:        "46b9c00fa762f5d359274c8765f3d669e5c1f8738445bf0bf3bce6e5e0f94075",
         arm64_linux:  "f39f15fdb09a03759c527a5438a8284062b7a5879fd10e0eb34a3a34f2b3b34b",
         x86_64_linux: "1de12e6872df672cfa7fdba896b04a582d52dbdd286eebc988a37b69a2ad3a08"

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
