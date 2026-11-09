cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.109-0"
  sha256 arm:          "0505209bb042fdb51e73a15f610830d33751a812b44f226103ea3052e8ab8de9",
         intel:        "cc6f44a6e96e6326500f93d980410ce41184b53814a6a282bd8299ce23730152",
         arm64_linux:  "4ec5edd4abe53362bcc03b0fd29c833f874411158ff387491e242b0785ea4522",
         x86_64_linux: "960d1f00df307c837e3d9e319d786e2f59ef8c7095b22c77a4cf6f046194cd7d"

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
