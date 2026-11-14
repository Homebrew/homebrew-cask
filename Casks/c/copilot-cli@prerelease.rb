cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.112-0"
  sha256 arm:          "23603376df60333b6938c888fb58d100c15c5cc974d46f1363d9857477cf4385",
         intel:        "ca67f38a188e7f3fa029414f36abf778fc43a50a5e713017780889ed561c2aa3",
         arm64_linux:  "b23eb2fc099f8e026697490ab0452a32f0cd21c99c9805a4adbf2e0beb5c8554",
         x86_64_linux: "c37ce5391c8d1d21df71e7823d008fca9f778f4148b7c2fe1b25871119c6694c"

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
