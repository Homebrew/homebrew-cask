cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.113-1"
  sha256 arm:          "619170fc5c6c4371ac72b788176d35c705b4b1b21af0be8a7f3fc92db0f88559",
         intel:        "e9c7c6abb7ea9e602750886338d1087199a23a023618a862b79db60bb05b16e4",
         arm64_linux:  "05dbc3af7d70c774be5e16e8edcd851263b405da94db068417869cb7fb3169f4",
         x86_64_linux: "9ba5f8033642d7457623c17380559b66bdc136c4420a32683a3b87a91b4e8f29"

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
