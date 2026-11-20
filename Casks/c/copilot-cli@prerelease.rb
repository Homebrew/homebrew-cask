cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-3"
  sha256 arm:          "2ca644530abf0303a21e164188ed2e19aa56623cfb70de30f493e8cfd426c813",
         intel:        "85a24c0709da3ef9e550bc67215d9a57153a332f8ac3c3127ec8e0f769880960",
         arm64_linux:  "406da18988d9d0d51cea365734478b541263e616d558f84c9e97e8054bec7054",
         x86_64_linux: "59989e8c1258fe7208ef9a4d2a9fe306011557b0013ce23098d1681d35f0240f"

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
