cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.113-0"
  sha256 arm:          "9062ac2d8b969c937633da007d9d5505df7bccb93be4ec4cffda4708a0d87b2f",
         intel:        "7f344b58f5830a149de2c6545ec5425ef89698efbb78b99ff7dc4ea5d2362d36",
         arm64_linux:  "56f2418c5d880fb1dece21e7f73e90af9a9f3c5dbcbefea31fcd1cced84a6e2a",
         x86_64_linux: "f5080cc10426338cf098c91eb1d93115bfbf4e7108164791cb55f246e7a8131c"

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
