cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-7"
  sha256 arm:          "f5702b39b23517cdd45bf3c1c640a72e7ed92c235a32f05681eb336a0a7b18a8",
         intel:        "208367affd8ab5e77a6be69607b22d60f8b75f9663e977321d420249566d6d4f",
         arm64_linux:  "8f489f2ea06da4fe24f066f7ceb8e2d2f62b5b5a646320c2f87ef2315f0d2a3a",
         x86_64_linux: "981dee12516c95b101c450f475c41ee2a6122ed2c885888ec2cd1cde5a0bf28a"

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
