cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.378-2"
  sha256 arm:          "c01ffd806ddc0a73f274c814879346b430dda13b57c42b06039b2121af0572e6",
         intel:        "84e47ea290a0edfc12f0c8d37649ad30759df89b97420330e3f3866a67cc733e",
         arm64_linux:  "3ecc4308a19252116e2a3d99a71fcacdc954b4fb03e85a1c294e7357b54882d2",
         x86_64_linux: "364c0bda307620665aed5e824a3e833b6813c90951a718c139f01f0e1ed6b5c2"

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
