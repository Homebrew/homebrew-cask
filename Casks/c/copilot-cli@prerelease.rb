cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.93-1"
  sha256 arm:          "1d171ae20536a915ffd6275d2a4dc932e345a7e821f47545e53fba7deb313c45",
         intel:        "12047ecefcda1aa87c43b025338e8c888cf9f2c743c8dd79edf7e7c4e4dc1fd0",
         arm64_linux:  "40f0e3718edc0d7f569e5f0dec1562ffaf616b5de085e7443f5483d6034859d8",
         x86_64_linux: "0110d58eb29d0737f42bc439b134d6e7f69feefa1885b870b55bd36b8c165e39"

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
