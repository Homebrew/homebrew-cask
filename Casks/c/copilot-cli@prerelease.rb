cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.382-0"
  sha256 arm:          "050be50bc05d6ec1e9966643e7b39bbc4447a8709f434cac5a698d2f3a47ba1c",
         intel:        "f6a9b6480536e15743f4498143486b1aa60102d368d1ce681ff6f2a41d4810ee",
         arm64_linux:  "3d7a014f907cbb598c3aba11b263c06af3b527ffdab012c770c62bcd9b49e3ac",
         x86_64_linux: "ec7c88f83d31e92009b77412799a74d51983603f49c2f1785d264a1335fbbcb9"

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
