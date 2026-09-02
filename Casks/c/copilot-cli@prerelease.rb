cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.83-2"
  sha256 arm:          "b43b4bcfcf11b286b2243f0900e807e417e05b1f2a098fbdcf4395cc5781a98b",
         intel:        "45abbfb8974e80d5885ebef71c514899161d0d61153350126ccbd1c913841811",
         arm64_linux:  "b2e2a64189987eacd96d3c7912769ef7e45a151bb428c4488d5cdb152e921048",
         x86_64_linux: "480c57640d604a0268a6df5b4b03640cf84b931b2cb5dc9c9cc28edca7cbf76e"

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

  zap trash: "~/.copilot"
end
