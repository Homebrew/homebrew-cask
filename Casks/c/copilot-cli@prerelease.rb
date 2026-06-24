cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.65"
  sha256 arm:          "98a039a1246b78d766270fdda197480a2cc21157133787fdb7989f1288d5b29c",
         intel:        "7c1df62ef3b6c5919d842c69b4cdf641239e9612213b18f1ecdb60a86c89d336",
         arm64_linux:  "e9f4e570cfe85e7be4a3be4b74eb6564c3f96e97cb1162bcc6282cd1f820c686",
         x86_64_linux: "da36be29a5afc7c6cef63b25ac10ee1862216a0f5efabed502ed42c4e0f62af8"

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
