cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.375-1"
  sha256 arm:          "52fa03b970bfd28bf266b1c2f43b6b4139e26931bee24bccd8640bab0c8a5371",
         intel:        "97ff60823c182e7f72ce22fd8452e1a0967978f90aa10e5534347b7a36d19516",
         arm64_linux:  "dd92fc6e91f6fcc418b74ccf24d04571de82c146f0d2e9dacb1b5bccc2b2394f",
         x86_64_linux: "cad43269facf57998d068ecd184bffed81b3be9435367a29cab2bd2ad85134c3"

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
