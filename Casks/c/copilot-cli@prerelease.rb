cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-4"
  sha256 arm:          "c4eb3fef8a00390086f21dc1e620451936c49cbcb2940868d5247d26e11a0c18",
         intel:        "e0ae8304238ddc907fbcf77350bdd93db497bfc868866f86409a364f3bc8bcd9",
         arm64_linux:  "c6a33848cbd09fc73974945b0275fd4688252ba0d375fece1f8fb21ab45abdc9",
         x86_64_linux: "3c87650f18ee058334c711a291050b77989040991faa13c294749c85752453df"

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
