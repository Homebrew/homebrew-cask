cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.100-0"
  sha256 arm:          "bb5275caa5e2965a5dad5f060dbccbcc09dfdbbf7b19c0e36ae47d27b4462a28",
         intel:        "2c10a9558f3ff6df4465a730900ca8a911640034c4a989d9f20664fd2eec655d",
         arm64_linux:  "6940a8d7791673395e3fbfd5f53f70d8a2bf8d573f7101cda1eacd9fa99e64db",
         x86_64_linux: "e7d7d31f9212263b8ce7079259541989aa70b741086577f95effc5de001546f7"

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
