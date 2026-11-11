cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.110-1"
  sha256 arm:          "a2eaeca7db61ff33c730579cf27839341141f180e204b58ee7886153c3c4b9f3",
         intel:        "0a12adb6d354d25c1d8b65a7216e9a37925ca8288b0d5b65c2ce354ab4b14478",
         arm64_linux:  "1e9d6a7d8a4753a35438107914ae948eb51bf28b544a1d2da55ea94701a633d8",
         x86_64_linux: "25be6b688877d0b7593cacc231b3dd441090a99b46aa0c0ed791fb1f63bb4c53"

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
