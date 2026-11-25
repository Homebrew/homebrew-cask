cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.116-4"
  sha256 arm:          "f91bd86ec25e93bd5732d902b4dad6bf136e0142714774bb3ef5708290d796de",
         intel:        "92f232d9925d275f4852683fb3e12e8b127dc42db1d0bff4c0e5eb3cbcf9353e",
         arm64_linux:  "4676f326df092c5ed3d2c920014ffdf1bfb83eec60bab426774056343a0b2e38",
         x86_64_linux: "afbd8ab3a43c1844baa21417397da14ec0cbcd275f625471cc77bf58abebf431"

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
