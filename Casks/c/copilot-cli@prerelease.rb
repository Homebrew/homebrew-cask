cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.92-5"
  sha256 arm:          "66bcc23128925eb64cff21bb681ea006ec48be43f75432834f1e10bb0a26c0d9",
         intel:        "f16f4f3830837a2f54e8270591fe381425156468af35e7ba564a77f75ce3f569",
         arm64_linux:  "721f3df2f78b0016d22c5ea332cadccb9d38c54292fb4bc3c17be86410244c65",
         x86_64_linux: "3c4724b4316e7871ff6814e1178103aa808fbb3cb7fcf4b356ae5c6c89d9660a"

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
