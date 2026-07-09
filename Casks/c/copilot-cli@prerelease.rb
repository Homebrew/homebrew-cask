cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.70-0"
  sha256 arm:          "1f80b4e8af0d7955b42de3a1b3c1a279e64ff14871eebbb5563c51ddfc1cabb6",
         intel:        "06804137ed980ecac0671f8ae5bc5ee2569445f0677ec823d0524d84e27a5481",
         arm64_linux:  "174d2a892eb2d0f5f078d8061eaa9c2255b041e3b82d488a43cb2eeafd96e488",
         x86_64_linux: "a4eb2ab70c9b5deae80c365bc9f25dd32d97e5a26ac8468ef7e960beec188063"

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

  zap trash: "~/.copilot"
end
