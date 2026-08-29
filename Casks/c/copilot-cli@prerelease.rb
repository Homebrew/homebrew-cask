cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.82-2"
  sha256 arm:          "d01a88c434c2843284ed7894dc189298ebb35143a7cca7d80d7d54906f1a12eb",
         intel:        "241270a72d7ccd98460165bc6fe567010bd25cd546c5a7f10c354debc82949d2",
         arm64_linux:  "68c490bf95e84b39b23b6e5f9e12504741492f93565d0bcd5f1c0b0472985c79",
         x86_64_linux: "5c7c177490cfdb9122b9c84d368e596776f1d35e304eef2b8ea2da1ad512dbd3"

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
