cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.90-1"
  sha256 arm:          "45af263d4fc755cba57b3f10c559f2b6f28f922f26d492c15d2e3459170899b5",
         intel:        "5ec7bd4d52f061b52884d424c66407e53676a1885ebe5ffc14cca35c70d4c58d",
         arm64_linux:  "a1ee3746a4f9a1d4a5aff4be957b2c9e085a0490f412cdf1dd56bed08ba5d936",
         x86_64_linux: "94c6274e2fd31312465c1d8c5d242fea3d5958c8e458ccca8d19236a5f11fdd0"

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
