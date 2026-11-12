cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.110-3"
  sha256 arm:          "1c7ce2c5027798a70d5c87f7059e61471a4faefdfb230d0f44b49173acefe44b",
         intel:        "a4de0b69c088e4fac78a79971c2fd50d08ef823f9d84356cf7f4f134c28f99f3",
         arm64_linux:  "73c7e913b7a815da48264a709a6f343124467ade04ccbba1852d83df5aa3d029",
         x86_64_linux: "158bfa841d9d20a113caeda69dc77f220f7df4ca444b88289dc5c5e685c31c64"

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
