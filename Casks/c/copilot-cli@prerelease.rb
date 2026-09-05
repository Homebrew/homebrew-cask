cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-1"
  sha256 arm:          "d1bd847531e43eb9a0c14979a98d0973d8f532dc1a6a438b1c32f6815ee8b562",
         intel:        "dcb52b773a178ac453b47c3b57ccd898b5c78ca397a0b0bcbf9b080e31941dce",
         arm64_linux:  "c054d4be2e6c2b9921f8516491636f1e59a9a317399d04d89e9188d5f9d35a66",
         x86_64_linux: "54dfc773f02de26fabb8bc11351122c7adec7d1975d3d9b1a4e56769c4e61fc0"

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
