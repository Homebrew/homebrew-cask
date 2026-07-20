cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.72"
  sha256 arm:          "e1bcd770a4db0756198ff0cc3b7bc9282e03160c32c98b7c4a73e439b0693f0e",
         intel:        "e82705c8d44d26c2c067304f293a2a71a6031a7060e677bf3d994dfcd8c0f3da",
         arm64_linux:  "7106f1e7f180880f6625be3e7085f19f6f1fa23f6a94e1d68dc929292f9f76ae",
         x86_64_linux: "2a79c76a6381a09d8e96dde2affc22cfd33363503482a4f90a06c546bd9e1ccd"

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
