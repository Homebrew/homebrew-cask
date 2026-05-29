cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.56-1"
  sha256 arm:          "7d2f7c9c5b029a3f4fd36f33ba1f98092aa3c5a7e3c607bd58bf56840c08659f",
         intel:        "4ff4b7352e21900799d5f4295da1cc81410bb616096a68b55e083c24f903b326",
         arm64_linux:  "df4a75110e023d45e1f51ef1d491fa8fa40215a3df0a1f7aa25456eec84f014d",
         x86_64_linux: "2ae9074076a3d91256f7126f78a2b4086225d3deaeefd8af42749ec282a93c56"

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
