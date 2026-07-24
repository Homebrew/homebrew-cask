cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.74"
  sha256 arm:          "df589022d5524426a65d27d45fdd445627f5a8ae1e97a8e158fa2d95a84cb554",
         intel:        "f9eeecfd10c5bb12b8eb22e0120479f9a9c8d6a3aa21310cd74db41cd68f2800",
         arm64_linux:  "9a21e89dcb44f5d295f1acb6d821ffc95c88a42efa7f2dd3ffd060be6e8a6797",
         x86_64_linux: "4a708b0a1cbaef4c2ca5c546a622f887a3b70e8a0432bc3cee0d386704816650"

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
