cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.74-2"
  sha256 arm:          "61d9120be438c9324be5533016d72beae93d2b8179a7f137340cde26f0faf384",
         intel:        "c547a49ba05d602b1376b32865d61ece3078486d8de78e01f910b5cbaf49db90",
         arm64_linux:  "b1c4a6b442aa95646abee6dafc013061404e6135a08c7889d328841f1daf3824",
         x86_64_linux: "e45173f20cc71a4939e15f8506ae507c8bb7387d45a581314d5a75d104f08efe"

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
