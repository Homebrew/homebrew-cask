cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.94"
  sha256 arm:          "76b3d412d7fe18d6798c26e3c9a42de9d7b39c800788e9bb9352b619517cbac6",
         intel:        "92df4fe029c7f8beca6fdffc03776e3dbf2c243b4179e8b1d20103e6ed4f812c",
         arm64_linux:  "8d763b46fa5f30151ad03b94aefee513e9312ecfa2d485b02e356ff1a3955e61",
         x86_64_linux: "0acaff842900357f4734c768b8933b1c5c8ce65e1bf74f15573f5cedd650b240"

  on_macos do
    depends_on macos: :ventura
  end

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
