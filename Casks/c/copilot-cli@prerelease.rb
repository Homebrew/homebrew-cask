cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.104-0"
  sha256 arm:          "11d0f161205fdb4083ba3e817bfacc286ab0370a13c5cf709399b16108a5c4ae",
         intel:        "ceef32b84cfc7a3d36de51888ce5fbff07b1b71f1962c2fb1db9c532ebe6b9a7",
         arm64_linux:  "9f1e7fe9daea518288d32b0095d3522c8028d23500460e73e2eb59b07289bb2b",
         x86_64_linux: "3c96fc54bb9216b88b398618d9a7bbdd7865e85e7aaa3c2847bb697a8e76d03e"

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
