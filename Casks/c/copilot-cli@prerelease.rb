cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.407-1"
  sha256 arm:          "7d7a80d84a21b28007668ea8830202f737c8e00cf498c58a3b72b89bf91f7f40",
         intel:        "d2defe4d5720d9880531b832c5b932ad75433c331ad3508b1347b57ff9cdf1a4",
         arm64_linux:  "09600fe85105371f2eacc4614353c9f24fe871257f466dcf9a22001c8865ecf0",
         x86_64_linux: "78274394e2023fb9877e987b8d5faba088a11cb3693a7e232c5f6d911611e10d"

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
