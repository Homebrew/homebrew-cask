cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.397"
  sha256 arm:          "a877800c82e2c7b7d90ace54c01de8155a5f72ef0c2486f6a7c9c99e0491986d",
         intel:        "b9f84d3856566dfbbc4cc6d74e330c6b5d7972297d81db5ae52d24823c9af354",
         arm64_linux:  "ac12babaa654a4acfca6c198d2d01bb60ad18dc9b4a05feb39d588582c60a9a0",
         x86_64_linux: "e2a897e9079db55f8fd3c4878bfc3ce3f65866742a0513ea6edfbb55b8113b71"

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
