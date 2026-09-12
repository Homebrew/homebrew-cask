cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-5"
  sha256 arm:          "6e96758e6c76ea88203f5b04f8d5c571ec43f19192508e9951ac9da13180c45c",
         intel:        "0f75aa5a93e7c9a1eaf769d53ff3149265ceee242603ab62d6f322fc010240ed",
         arm64_linux:  "72fa21dde3b9bf4c9deaaeeb02746fed1eee8ca3c0d6a4de0c77a86e090ef21f",
         x86_64_linux: "b4e32dbc7958ed07287d33953669bbdc0f0cd4ecc667040f5c229841618c7a09"

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

  zap trash: "~/.copilot"
end
