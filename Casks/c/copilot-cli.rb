cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.370"
  sha256 arm:          "a5eda623123f925ef283fffb53007523b0e1e79241bcee7c68067d18202a4b95",
         intel:        "657fbda98f65bfbe2b001ba036fe7ca277a86f3598d0ec845e7db6328d573221",
         arm64_linux:  "f7e40d5836ef8391afe496eedb796b37ee2f00d65851c9a87770f9288cbff0c3",
         x86_64_linux: "0aeb89d27ac41d15153c1e4251529409b478a7a2a413fbf2f3744d10e1b9fb46"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
