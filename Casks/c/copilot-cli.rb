cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.422"
  sha256 arm:          "5ccf5d5e54c0c1bf60caaeec4cda6a22cb230ce2681408c386c3152e6761ad48",
         intel:        "a020f259cb370189b3da031b402fb58715b96a3bae80a04dd2dd1e74dc4c8118",
         arm64_linux:  "8660a2e3293c023b8e10cc542dd4b50e0fd299668e94509e6bcec8c4fa6c9b2d",
         x86_64_linux: "bbb564e1073b010adddf54cb689f60fab4dcc48ac515e812e671a9d803528e54"

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
