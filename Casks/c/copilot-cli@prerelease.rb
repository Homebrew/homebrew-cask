cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55-0"
  sha256 arm:          "f0ded8f72344ebc674a3136c9ca7fe36b26f3c7a93e27ad60fdffd1ec95434f7",
         intel:        "5630f7d112e8a28ef26173dd090a2680b114312a25077e97e26d1b9a53c55c9e",
         arm64_linux:  "4398991676c0b2eebab0c456574c424bf23681d1b329d197abdb0d8d9cc03186",
         x86_64_linux: "19b07c0fa2349de0bcd9712341645fee8227926d918782728f0db7627cc236c2"

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
