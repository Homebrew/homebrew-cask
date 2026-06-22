cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.64-3"
  sha256 arm:          "72c4e9cfc80c1b2a4bbd664be5c607616fc3f0fc775744e71957b08260d6e78c",
         intel:        "c41b4d6e4c50f31d5e7e7201f50e2f6808837d95bf7cb47bb5cfffc2605fb005",
         arm64_linux:  "587efc5cdaeef678dd8953544b5e62e007c6771800398fa1240a2b61428c89fb",
         x86_64_linux: "12fcc3fceddd6c7c557aa184c33ce81326fbad9d14110adb2e3443fcb737be6c"

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
