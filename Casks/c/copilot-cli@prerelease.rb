cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.51-1"
  sha256 arm:          "ee4b4863baf4c8e7a6c292e8508e8a226703665e0da867fd6fc2017dbdb6c2cd",
         intel:        "8f88cf38be2e9b6f6a7063e35e09444eb068398a631a0b9b96b2e03af9a8eb75",
         arm64_linux:  "5b6f96aafd5c2919e236b684276692aaf432854db9ce2afffb7db8de7139890a",
         x86_64_linux: "c4bf61509c7525cd0bc1f4780f4dbed3911bb239e0c431d77d10b9ae24d9dce6"

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
