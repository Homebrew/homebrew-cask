cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.53-2"
  sha256 arm:          "8427760e0106988aa5f60e0febc25227dae017de84e557a883ab3f128d5202ee",
         intel:        "07d4847f50cb25533658d17738be2504264aafd2d17069f0e4a445119153024c",
         arm64_linux:  "19a102a1dd48c51b40cd5c090a75e4b159db24d87ccb358868b343fb4fa5c3e6",
         x86_64_linux: "2eba6e7b313a3dce25d0845646c886a49b51c85c062f7afd16c97ca99cfc2e78"

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
