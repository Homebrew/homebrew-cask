cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.110-0"
  sha256 arm:          "d2ba8ad91a488d0f37ba5a7635bbc0d12853336b3e74d566d129d618c5818cf3",
         intel:        "a15acc0431df760f21eb74ec46ceb2e48e691dd4ea9a2c3cfd5b3a4807bd444e",
         arm64_linux:  "72e6ae8bcf4957d35edb1b0cb8bd05bbfd5f2bb88d8535c61598f469881ba447",
         x86_64_linux: "1e60221fc6a16f8fce2d6eed37e81d261d67f1ff30bacdd4a66fef5462c88e83"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "copilot-cli"

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
