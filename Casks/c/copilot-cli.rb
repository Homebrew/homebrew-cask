cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.64"
  sha256 arm:          "0293b5db24671f60c5b6b7221fa3e1d73ff885a31f5ae7eb1f0b7edbdb283ae7",
         intel:        "687930e86417eb8c7be0b3d2f6df34fb2ecd661bd857345d419827574aa234ed",
         arm64_linux:  "c8ffbf1086eba335d98bb16ef7d28f0e758bcf2697845fd386ae635464abf761",
         x86_64_linux: "3c4125ab23fef5f33e8a1924e482a7fb5802c0508b6938be06980d45e13e0d56"

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
