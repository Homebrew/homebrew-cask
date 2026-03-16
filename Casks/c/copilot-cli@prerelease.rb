cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.6-1"
  sha256 arm:          "cd7e86154390c49800978f4c632afd52bb9e31233c8af5be849364902887a880",
         intel:        "dd15b7c04ba2f62d7aa9a5908f3e44d028e649f3eb2e823c5617e08cbf8ccba5",
         arm64_linux:  "fe2058bb6b88b3f5437e8878086bae24eb19708583db3ea0630b3df9ea55fcd1",
         x86_64_linux: "db01e7f1596427e844301633e407494769dfbb30e8eb827218d842cc6f010e90"

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
