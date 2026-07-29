cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.76-2"
  sha256 arm:          "0e6ccf9e62b0aa58ce5a6e14f421ff3eacd8ba02f7a42a6187e16b8ab5618c36",
         intel:        "da81743e8d1cefaa4bf6151001e509f592a414eea58cde53ede2fd837b2650cf",
         arm64_linux:  "35f64fd066a9b30619b0a8ed9113793144600b5ac8eb3b0579e506cbbda73541",
         x86_64_linux: "c313ace17c0873516bbfddfb7e24d12ad334ca5c086cdb28e568e654a963b457"

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
