cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.83-3"
  sha256 arm:          "711a2857e2122817d01c06ec6818833b643af932d6f4880f4ce32060129e8365",
         intel:        "e6f09a447d4f5d54ae6ff5c85311dd7e445360f65a5e5dfe3867ef4f5f79ec92",
         arm64_linux:  "c118c8af7bbff2d6fbd4dfdd88dbab9221c72fee43c50e0ee6e040f728189406",
         x86_64_linux: "868c68d92d207cf1b68b4791b94b38d2cdeefc0717986bc5cd71843a83b41603"

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
