cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-4"
  sha256 arm:          "43f247c5e531a15ec5780fa865f01a44829bc289d720a14aaa0c46356f66a4cd",
         intel:        "afe4c3298dafc9b3f3adf6aed010a3cfb745c28018ba82dc10decd588616f24d",
         arm64_linux:  "31a6f7159b798f0ddf09afa22e44382eb9b95c274afbb27ff21de3a67bb2bd34",
         x86_64_linux: "df968ec7a317e0a2cd8e3db9131eed1e11ff96d5c9e770979b88fb8fa39346f6"

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
