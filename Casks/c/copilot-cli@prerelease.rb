cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.104-4"
  sha256 arm:          "1fef8579638bf200dba25fd2a7bcde947fbe015ba29e1897abe2ee7f70874a3b",
         intel:        "97c02a9788000ccf646505b3f1321808c64850f02713ec9267bf3fe5e166b94b",
         arm64_linux:  "33157bf9f1a7ab6572e6c1aa955c7dae2642388b8e358b308da0788abd70eec4",
         x86_64_linux: "150e79c291765e72e5847792e128637c86fd8ee64ca452efe2c9df1864d3f894"

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
