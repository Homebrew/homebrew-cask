cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.406-1"
  sha256 arm:          "673737e40f6f913d1872326238b2ef1421349cdedc1a567cb71f282d2fca74c3",
         intel:        "621cf919c32e863836d49aee6cddf0189f251174b8980744ee99671c6d0d6a6b",
         arm64_linux:  "cbe533c83030d7a6104b2bec76e54cad09af4f413ac8193aa1e19833e61f7842",
         x86_64_linux: "c54e675137b5b0ea7280624128653425aed3be44504f6e1cc3de664f88381134"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
