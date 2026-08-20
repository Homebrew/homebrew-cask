cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-5"
  sha256 arm:          "00162b9d599d76ccda2f0c07813108b218232f28598be5d7d690fd6eaf3b3bef",
         intel:        "13806a10f1512a51c067c6e9e3ad307e9586d4b8232f251e259c28cab1fabfd6",
         arm64_linux:  "f0ab3e7dfdae71b56c04214c8f610c566a06efc5851b83dda3e500ae6ea8a3f7",
         x86_64_linux: "eca23e35aa6dcc30ef2d8dbad8224000a2b5b279fe80f1c86051ed8dee209af8"

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
