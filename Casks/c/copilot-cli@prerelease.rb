cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-4"
  sha256 arm:          "5d6d8328a42b9970925e2b9cbffeb919cffcc866dd5bf82315a1da719a0b96fe",
         intel:        "5b9c88a34c0e68f73226a6a2fd5e1dee9a99e7b89e047b93ce297534e12a7d0d",
         arm64_linux:  "6a8762c5a66f0e0bc2a7b738a1e5ed00a9e1510ff9c6f1f5dd717745a8366b2e",
         x86_64_linux: "c1754287abf88adcfeace3b2be56f1918627ef10e767299806d1065157a3fe64"

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
