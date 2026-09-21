cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.88-0"
  sha256 arm:          "872cc893ead1788fb3848fd2f305e740266c7ea3267176fb18da2a2d74150419",
         intel:        "0a23a3c524012208cdee407e3f7bdaaeb18f087808b0d9ebad934f362db67136",
         arm64_linux:  "5afbe3ed62adb5062c1dfaaffead82e663efbfecd0d22110e335b3a453ba0d24",
         x86_64_linux: "96c9bf7b461fb8e2c39d01e7ac21aa50686502430a220a575c7d49e35fd1248e"

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
