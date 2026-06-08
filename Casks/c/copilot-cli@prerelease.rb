cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.60-0"
  sha256 arm:          "a9e18f702e92cda7ed172737db0280d2878a76b7eace2fbcc119a2bc693e2c64",
         intel:        "88eaa6398a7e99b28fcce8b1e231771e07a88bb75fde769dc7a3692cb822e708",
         arm64_linux:  "9d253a65e6e854491d7f7fe726e79703992e3828949c91628c32c82c78f7d8c5",
         x86_64_linux: "936aef12b44dacc6112590f42579d065028d491732d4f987c99cca119ecd94dd"

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
