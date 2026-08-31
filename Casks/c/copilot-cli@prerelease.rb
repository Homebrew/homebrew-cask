cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.83-0"
  sha256 arm:          "c98b91348b3e3a5406bd1fb870addf038e0be029d7c818842a3b6023453d1eec",
         intel:        "c5ba16fde484f3921cd62596d3c49b6d15cdf1cdba68b53781ffcd880439ef14",
         arm64_linux:  "99f2a0b77c9558067aa7e93be9bf55248364486fe2461a85f74c3d2dc40e47a0",
         x86_64_linux: "5dc7b71233c09259508bbfc542894b2918c026d1751d5f3bd4ec177de0b7f0bb"

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
