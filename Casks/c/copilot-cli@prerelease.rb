cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.72-1"
  sha256 arm:          "2961b6187c3ae10230f2ad68719ae1aa424c7c8b9f221c9addadf449213c96ec",
         intel:        "91362f5a664d8442334581aa2baeaaf2c3da5dfd0e25f25f3d74530f030d19f1",
         arm64_linux:  "c22d8630580bb0dd3ebf6e9e1b20fafae5f471fd55919a6dfe579e50d9729e09",
         x86_64_linux: "925c5ed1a9aaa50be3c1f36594b54d839fc62f80f3a50c53663558281d64bb1b"

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
