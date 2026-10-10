cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.96-2"
  sha256 arm:          "ad4ca811425fbd5bb34b6cf213e5c6cac80b67be3d9f30058b59b49b92be5957",
         intel:        "3155351d9cc3990bc0345a612f7a0a9f642357b3ac8e45fae859be4fe6ce3c12",
         arm64_linux:  "9509fb96b542f4fe0551925bdf2d03773ed0f10487b7b4bff8d1869b189549fc",
         x86_64_linux: "dd38af0891f0dcdbb6c737a0ddf0a8f529a1f29a3c7b7c3d1c2871e1a9c7af87"

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
