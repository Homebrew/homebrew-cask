cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.62-1"
  sha256 arm:          "ccfcea35ca228e33cff1ee62e58c040c6b4eb0318c2e8a4b71f4660f7edb4650",
         intel:        "861c47e7e051cf52b57e3c6edb1c7f9aedec029b8fb7cd7c666cbc9bcc9cec65",
         arm64_linux:  "a25a7aab31f7907ff312ffeeec7cf603fd402d070b6fbbd84297e6b61bc5efc5",
         x86_64_linux: "38a54b3cbe7cef0b392596e3a7165dc382be50192ff4e5a175061328123c8aad"

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
