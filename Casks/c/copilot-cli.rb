cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.15"
  sha256 arm:          "74b6ea94cf296307302d3e24dc09895eb47f906e6b14dd1f52d6d28217be5add",
         intel:        "fdea990dd0a979979a2cc6e43720ddebc0da2cf954ba40d49a92bffa7da9426f",
         arm64_linux:  "c42aa6133327e6dbef20995cd76fd8480a819e401ea76ccb115d6e285bee10d2",
         x86_64_linux: "4a689ced80bf9b5adeea102d106154f9d5b7d0f2aa01df80f61cd4c3087bb222"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
