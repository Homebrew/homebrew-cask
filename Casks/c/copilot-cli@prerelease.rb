cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.52-4"
  sha256 arm:          "a7a83828405d08c693531a5891c86c4abd536c86e2204afaa635c5be84eecc62",
         intel:        "286c2197e3b0c93db37d892b9d23913920a5c38c23c2431d0bf8ce196c467290",
         arm64_linux:  "1c3ffbe2ec26fe77831147dcdca1ff0660b6dcd0a43dca5cb77f6b8ab546a206",
         x86_64_linux: "8e62bde82b1e9348776b4aefcd3c8ecf93f47aecddd44813fa39e766d38293fb"

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
