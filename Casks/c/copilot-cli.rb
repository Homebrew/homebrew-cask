cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.48"
  sha256 arm:          "b89256fdfeb1efa3ba3f9c8848ee844cd34ea485d53416bf304b6c69b18d4378",
         intel:        "90e2e4cdc3053fd6c517fbea266910f23259ee89a7d824f98bc8673dc589ac1e",
         arm64_linux:  "5a57bd11a2f1770a433f9e041bde39c657838f7da4f7b7c059da5750a669ab7b",
         x86_64_linux: "f2a1278c3c2fe22cbcbe51c0d2ee251f7621d2ea2211fe1c7b3668ab3b363ffd"

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
