cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.88-2"
  sha256 arm:          "e3db1cd52641a40f36421a018718e71f2f4c26e2c289b86a2df29797ee6e89d2",
         intel:        "dcd10007317821da5533771c80586854a0c2cf84a3c8447b8983199e176ebb6a",
         arm64_linux:  "0a9277d072166c1a845ef8febc328431584c357733dd1d36a3fc68ec1e556d95",
         x86_64_linux: "f5acb81074092ab4e4e75a3e9049427cd7173c12a9de2fdbe3e0023264f87b31"

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
