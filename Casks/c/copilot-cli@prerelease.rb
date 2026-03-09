cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.3-0"
  sha256 arm:          "76e99d61831897015f9369876d0696fa0ca1c06566f45704250cf7b67fee9bf4",
         intel:        "cb2853a2a9b65dbc13adfa7d9356ec168cdec13a134332a56f1db8e0b69a1280",
         arm64_linux:  "b74011426c388681f36f47811042f153fc2ccc63008a0b298fb1f61f6b89a6ca",
         x86_64_linux: "b617d64614594aa674775b6b91c0e3710b1d7ede26c8639247a3030cd3b0cc44"

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
