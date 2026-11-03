cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-6"
  sha256 arm:          "f9aafa95e4039606f5db09cdc5ceaa5d02e4524d5319b60e5b01d4568ffd0241",
         intel:        "14cbb52547a144e142fc6369bf564dab1e8cda9c2b8f4fc5a334b2a4db054534",
         arm64_linux:  "1a2ab515182411bfcf3998a0837ebae764a74695ba7b115f8d52826be318653c",
         x86_64_linux: "209519663bd64cb0c561800864d95bfecdfeb1e4a4a4f50bdf4a680deb2157eb"

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
