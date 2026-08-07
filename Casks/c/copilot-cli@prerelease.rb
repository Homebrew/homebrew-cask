cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-7"
  sha256 arm:          "95369108ba17a00bb29958feef51c5e01d3ac092da8f6d2d0148f5d87bdc957a",
         intel:        "9d8a6ccaa5e97a44c8c9660d494d1ac2368afdd6502fe3305c972f71f811dea1",
         arm64_linux:  "1bb01c81b94869b181800a503ec6c0e3eed8fe86481b2084aa27f8e47bbf4e6d",
         x86_64_linux: "2b412929b128e05cc870367543a2f5220a3ee68a3442fb81bf217d7218834e04"

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
