cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.98-2"
  sha256 arm:          "d587f9063e3a170fbf156064b2001472f147a4c46a60129bd3049666202a183f",
         intel:        "d7a794c0137101c3cf147d87eaf25fe9c15e754bc18957eb451d19defaada569",
         arm64_linux:  "13c78f98836b43620ddd7cef4d5771e2da18817eabe28419dd34c410d107a0e9",
         x86_64_linux: "327c404687dc629cb3e43b2cd7258204dff8b8a1ca778caf1193749d9f1d100c"

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
