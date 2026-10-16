cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.99-2"
  sha256 arm:          "5ab287c670e11388be70c0df1480727564eac32662615a89d8f2bf33dfa9b985",
         intel:        "314a4f194a39db39dcad2c8d74dc6c07daeef2c97d99cc722acd5cc8192a3397",
         arm64_linux:  "a8b8f7823c4515d1c90f1a3255fc3602616b2651dbde5f073889ad37cbcc1438",
         x86_64_linux: "81bb87013f123be38aff010155392e853f18efd957664e5828dbb2e490df14a7"

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
