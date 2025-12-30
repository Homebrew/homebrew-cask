cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.373-2"
  sha256 arm:          "35f5d129b7955c42eddb5f7b8721affc6357c2a274a56dc37d0b691865846d41",
         intel:        "05416a85390dc4cde901fe082fbea291de064cd2d4a416616906a5ba8ace7517",
         arm64_linux:  "80a097971d32ae5f05decb93bc0ce5857516a9e9fc642c9cbf6748d2519d7e2d",
         x86_64_linux: "e678056ff404d91cd658b7bfe4808b483dc4e678d08be64cae5500655ea9df9d"

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
