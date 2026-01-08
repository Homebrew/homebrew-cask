cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.376"
  sha256 arm:          "d66063f706777abd520d1fa97eb0d878ad219f2e6bef56a2cba1378a82a30334",
         intel:        "8cd9c27b14a0f4921b6493c592e2c4a29a3ec8d41bc010504d3742f80b0bc953",
         arm64_linux:  "922e94dfb86a1b9572e00fc3d48bf6cdf3f11b0484818678f49cc22bee3cbcdc",
         x86_64_linux: "da44c112982ad2b26450735015a80dd95058c92c59df93263f09488252c01cb5"

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
