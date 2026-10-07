cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.93"
  sha256 arm:          "a003408e5b0aaa91c108fe911f4ba2cd5f052bbe34dd20e31c08b12a21ba6627",
         intel:        "f2885541970a656ef5dbf87043c9dc49d8e9203142ee015abc0f3d2ba6e2eae2",
         arm64_linux:  "d01fd18ba2489e7878d9ddcf46de9817a1a2f803b474c0283e2cfd8f837b5d22",
         x86_64_linux: "23208bc3534d157031a3db3421e239169b2a67b98655862c0e1daa6d91afcea2"

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
