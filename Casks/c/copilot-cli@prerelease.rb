cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-6"
  sha256 arm:          "5b9df060b64ff5c221e4c4b35f009a59b46dfb5dad903f37c22c339773ae40c8",
         intel:        "94711ba00235aefecdd2c02a1b947fa4092bc174e68bbab71b076ea37bc6ea1f",
         arm64_linux:  "da88e41065ea55969597863fd8cf08d32267ec1e4cc1974331ccf00f7704dce1",
         x86_64_linux: "35ed7d3a9ec8971d56d0744942398913082464ec4a219e143190b63f4647934c"

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
