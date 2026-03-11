cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.4-1"
  sha256 arm:          "b76c7970716cb69a32dbec24762a5dbf3f0dde9c3390ef50c1a85e604e727e94",
         intel:        "0eee2ab4fcab8c452578693f67fab8e7cc42da8527b708d6b740f8e8cc447f05",
         arm64_linux:  "d72f10b539dc5d420c333cfb5ef7f65fe7bbcf24505317a650b2f1b39b83a0e7",
         x86_64_linux: "8e90e81f09e42daf8573b3197174b806542a860c90a9890eb0a76e466a0f20bf"

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
