cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89-1"
  sha256 arm:          "0b83667389086de92fd01569bfd204425900903fe159ee62d8c70af07b5c974e",
         intel:        "332ac15292b6aec21bc6fc713d901b7ec4388169a91d8cc8def71c32cecf0cf8",
         arm64_linux:  "b6be71383463bb3d286e873a005b6a45280b6621fc999444443e054e5fad3b58",
         x86_64_linux: "7dcf87b43e7ca060dfc30ab5782fc3767aac28a4f105162223406991b9ae42b2"

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
