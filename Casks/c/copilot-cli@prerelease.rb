cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.83-4"
  sha256 arm:          "82c8ff71a5b271beadcc64eae111164c416d2b41cbeefa569d1631703a6942c3",
         intel:        "2c849cc469d7548a163ddbe640eae9dbd8e0bf000ca0adb073a4175e61636576",
         arm64_linux:  "e8174e72f2ffdf3eff31d2dce4dadd0f0476501dda7b48e36e849010a7287837",
         x86_64_linux: "f56e42f41dbff2779bb69e073a2483765597c9926d27cc17c7d12935680c721c"

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
