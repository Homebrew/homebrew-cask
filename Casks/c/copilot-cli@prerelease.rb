cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.97-0"
  sha256 arm:          "fb3b9ecef672728ca1c488ec1f5df09e802970f299c29d15f7269ad4d78e7665",
         intel:        "85c5dc5fee575d2b670deb38794a9c5ed69638b9e31f0be5f619e5a7b6933ccd",
         arm64_linux:  "54e438a74476fc78eb4eacb2602ae78a93dc3bdc9687c76501763fe3647a08ae",
         x86_64_linux: "ae586b5a5f97d4e366d928a7a5d5a985e05e28b4b08b58035fa9c098b29ab908"

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
