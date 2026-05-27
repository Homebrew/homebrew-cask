cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55-3"
  sha256 arm:          "c2eadca7faed59e0b16ff59384f22d8e99eaee9154a5506ec7b523fd8a7a7312",
         intel:        "639b41d9134067803b771527409a5fa7aeb4515d8dfaef1da0b9f4715a31ff2a",
         arm64_linux:  "cabd56b24b04d1701d12239c17ae4b83ee6f2b29ed7510e7618c7188284842a5",
         x86_64_linux: "e48a073a8910df4886c5e7636ec728f8ce4fe98750d607976a8549987c0deb62"

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
