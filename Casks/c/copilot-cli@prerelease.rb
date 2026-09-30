cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.90-7"
  sha256 arm:          "712331fe5276c9825dabd2517e61507ea74b91a1f4b9933c71953fbd9071f2b8",
         intel:        "bb1bf9eaf633f5b712d428848b748d483b3a190c1d6dc2bc6ecc24ad25225f88",
         arm64_linux:  "61a57f3f82adbed4ec2f1593fff1cca11370a8db4ffd16fe05a1732da9766543",
         x86_64_linux: "66c02ece25ea376edd405eb20f20b35532121388a58f92d62b75ecd2548f6a13"

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
