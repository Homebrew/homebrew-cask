cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.80-0"
  sha256 arm:          "3e29bc2d034d5ac854c0948f8dc770f6b044fe1a7357e1b2296e0d8369d24f4c",
         intel:        "72f9d0025bf9f2c5933bd30db0f80625e61db162fd7a53f4673c88070f42cf67",
         arm64_linux:  "2716fc64771596561447029425cdea19600c1c6199b5319279dea1e915c4dea0",
         x86_64_linux: "8fffdf7675f2ca04c1b1800a8f9817c70f5386f5459176f79bd6534fdbcf9634"

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
