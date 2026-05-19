cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.49"
  sha256 arm:          "4f91c420a2dbd260626e854c7234b1491a7c7e17438b9f15138b292abef58f28",
         intel:        "0661c7c61b0955dd3b74b928a848be125b57cedb7c0dd7da265347ca69e34900",
         arm64_linux:  "3a83a98a888935283fc59fad55ca8828f54eb1737e2c831690f54ad66449eec4",
         x86_64_linux: "e61fa2490bc584fe65c4d9f3b2337ef63439cbd9e0a4f6648eb63223e1b32afd"

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

  binary "copilot"

  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
