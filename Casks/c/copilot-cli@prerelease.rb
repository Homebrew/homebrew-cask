cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.86-1"
  sha256 arm:          "338a6afb5daa81c10f9e008c08fd0c4cd78f735902e59c442a005e5a8923f3a8",
         intel:        "555a60ded3755257054a960950cdcb0c6aed6649c499631b29d6230f03112dd9",
         arm64_linux:  "21258f858e37c56c35f208691fa6869c39044ccdfc940ea38a2d59801401c18a",
         x86_64_linux: "f47c8a5c105aea037081989d4dd94800c2c986e7f712855336a594d208491ae0"

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
