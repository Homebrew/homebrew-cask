cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.78-3"
  sha256 arm:          "d3dda96c4e10ec6cde8d55c6c3107b95d17582c1469232c81ed8566912c600c3",
         intel:        "7b2971d522ecec3c3bb1e81f51e76ecd4200de6567820ee01b34a57f28c4cce1",
         arm64_linux:  "e718bcd5e7d8b2a8e65176b0b710d25295b51d4c75a3c932df1c2a0e50d332db",
         x86_64_linux: "99bbcfd6f28b059387b13d60cc5fc89d8377924b37a6c4939723f79e0478bcd1"

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
