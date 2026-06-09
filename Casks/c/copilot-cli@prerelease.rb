cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.61"
  sha256 arm:          "448f550b8cecb216c60cff5cdfaa46fe984606c316fdb62b5b5ed83248eef0ae",
         intel:        "8f7a7105b7a025bf57331b3443578dcd3fae252977c8246be797a01cffbab426",
         arm64_linux:  "225c87742394096557ec5d1cc559362654da895a672d5a7aa6fdc204b1c95d36",
         x86_64_linux: "228bd802a369ad6b3477be1c08510d555628bb1fc8a53a26337f336659f817db"

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
