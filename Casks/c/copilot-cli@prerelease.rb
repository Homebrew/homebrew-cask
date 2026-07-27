cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.76-0"
  sha256 arm:          "54debc073c0b2eef6d789a876949596d0a8b77c848584573d13319dadafcba71",
         intel:        "a311204e266ed335c370a83bd78940a80d079b4809bd98dfae149609afa8921d",
         arm64_linux:  "4a8515c47c3b3fa9c6b66a1e0c78e064863f910da5a84be9f89751e36af8cf56",
         x86_64_linux: "117d0c337054efe16eefc6349ccbb00ba1c225848f0a0375ccfe5fe09436a736"

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
