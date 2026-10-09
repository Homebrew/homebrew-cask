cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.95-2"
  sha256 arm:          "d51308182bc718404b67d6bb0257dc9f1cb64ee9560085b9cfc72f6c446b9523",
         intel:        "22e9aee6beab347f3bcc5de684e9c62bd58c88b4d6b60647aacecc6843e76a40",
         arm64_linux:  "2cc42c1c255eb55e7b7f004e065175713b4c1343d50f4dd329d8a0b0aec21229",
         x86_64_linux: "6fdcd1a26d413083df35e23a227c430c259bff3ade441f9b258a4ef13d26a544"

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
