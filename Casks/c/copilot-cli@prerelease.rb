cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.18"
  sha256 arm:          "26acfb249708e605b9b5af105327e5f79ba632edfe9ead89a30661c1badf2294",
         intel:        "663e7c71fcae233ca92823219125dd872fb78f233de71309e3b48ca61a5f0cad",
         arm64_linux:  "307a87bf33903f248814c40191d628c397f0bcb61ec58d12ac89a77b0ebda062",
         x86_64_linux: "7eca3bbb03a3db4fef9250f88052ccc5aa30ca95fae71add70e1e66fcb037913"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
