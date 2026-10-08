cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.94-5"
  sha256 arm:          "ec85657a509627a80399750ef99101a93e1e2c7cd1f24913b6900f14bdc8aa3c",
         intel:        "c701406a2709535f24084d946cec2fdad0ae68abb91a5eaead9152067948ff61",
         arm64_linux:  "e6e3460a24122668a8b37fb9df1ed5e6241328fb4521fe9f3d14749483c5e8ef",
         x86_64_linux: "7eed4faf65b2124806398e5fa5bff8e7dbe618943228cac86a86aced87423d7c"

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
