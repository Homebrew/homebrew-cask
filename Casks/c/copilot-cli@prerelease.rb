cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.48-0"
  sha256 arm:          "3d17bb5a7c637bd3ddffe54b44c50714458d1e479ff26dc5125a47c96ad57061",
         intel:        "aad33300f2cba0da9a17952af50b59f778017132e4b09d712267604bce86f057",
         arm64_linux:  "7b6896ca578a3086ceac6cef270dfec361ea39712c1db6a35f9543a957b38317",
         x86_64_linux: "4a478e2ee02d5e1bf27a220de5ee67d9046749677afc1d064cb7c6c66c08fd5f"

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

  zap trash: "~/.copilot"
end
