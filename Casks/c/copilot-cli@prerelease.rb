cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-7"
  sha256 arm:          "3cea8649bd759392717af7bba84cb1825d381f86fc7fadca777f6a8ea563f9c4",
         intel:        "ec4d726f99c9b46b7578803da29cb247ca3b1a07c515878bb8a554cdf38ac829",
         arm64_linux:  "aa83f5392d7eede8afce4c3bb5a00cdd8b3d14a76341dd9f2dbab3bf2814f01c",
         x86_64_linux: "aef72276c939ab2cae37a007d919b822f24677fc0fcffb0b97a032c0f86493e7"

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
