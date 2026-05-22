cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.52-2"
  sha256 arm:          "1ba57b722de44a3ab7d84fc0c8f33f56384d64caa8f2d2549734cf34e19b3521",
         intel:        "2a4096fed1945cd7e76131964b8f258feaa75889469286119d4c303162a72edb",
         arm64_linux:  "e6a493bda27d6a1a904a15167de872e429b8f0bdc1960ab4fea474fda1f63821",
         x86_64_linux: "71e743c677fc9c0bd2db8264f0b72e842ab94738a92fe308c71c3cc2c400f26a"

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
