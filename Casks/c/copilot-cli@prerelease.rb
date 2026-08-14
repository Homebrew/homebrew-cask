cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.80-1"
  sha256 arm:          "dd7910df3446175bc252f353769a4b884c9eef52389454cd2fecdeb20e4aedc0",
         intel:        "9f45b88726ef021624f8587d779150b73b49ece5536aae8c21109f55feba11c9",
         arm64_linux:  "89ca0fe062bdb0ba9be5ad125edde945d4b45dc7d0ddf44f18a868f315ab0c00",
         x86_64_linux: "d33db089983b994034072828ede964db97659558f1e3404e454fb7047a1d469a"

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
