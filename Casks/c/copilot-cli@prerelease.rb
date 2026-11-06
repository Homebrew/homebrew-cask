cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.107"
  sha256 arm:          "85c58e1ba11a5869c9f5f59017571674ef6199e474c118caad3cb23ebe99448a",
         intel:        "f9106a04e0134d2593fa664bb3bcaa282e308cc740c79182f6c3ae53fffe4caf",
         arm64_linux:  "28c9c911af64521821ba908dc1866bf4bfd1705cd9b3320abc2353704de952a0",
         x86_64_linux: "aff04181566f637010a88e68ea145ac1515ec596fae3890d06d81bb8c4be0c4e"

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
