cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.15-1"
  sha256 arm:          "7f58b692974fa6c8ee22de07dd62d4dcf584ddc62e9b73a6cc39f87e3a982acf",
         intel:        "65108ba6ffc90c75d8c7651cdb2633be79b7aea8cba9b88c86f275467aa02fcc",
         arm64_linux:  "4d109bcdbab8474973a417a6b29e7f05df623323bfbbf4fb625793e2570f7c57",
         x86_64_linux: "69a5449fad67e2f2877620905119bdacbd20c2748e7ca1f2d0673a088919ef2e"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
