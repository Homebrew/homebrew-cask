cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.93-0"
  sha256 arm:          "f29915e3b7e2d6a611d1f69f6d28dc00ec28c5b4b04138b927d02e4a162ff237",
         intel:        "05bf7e453dec360d0f8d8a19b97e9d4795bdd0e6f0c688b97c7ed5b9e5afc304",
         arm64_linux:  "f64a332e2a6151c760315e994e94a068d947980d73ed275216a2b1716016719c",
         x86_64_linux: "012ed47fc1942bc617b509116635d9d418b3d1350215887f1cde7a24efb10f05"

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
