cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.370-7"
  sha256 arm:          "56c46cb5eb2273095f97e8bc932d34a57495d1cd9580027d2430cabe406625d7",
         intel:        "001a990a0fafb765de82d50b88987a8a1653cd0dd4d9aba4ac80ae5ad72952d9",
         arm64_linux:  "c53c954fe0f37312bd92419fbad1376839b62dccaebd45b563ede6b1783dd1ae",
         x86_64_linux: "20a4096d73b5d5f14c9d3c26238cd992ab92023b9b9088a7037ff626da6810fc"

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
