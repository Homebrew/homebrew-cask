cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.48-2"
  sha256 arm:          "7ba03e7ad0901f00f05826615eb4da0778064fbc29137fba9f8f47179889ea87",
         intel:        "88cb8cd0db58476586a1c340503195d9b2f3480083782d233beaddb7a7d7359d",
         arm64_linux:  "20c469a7ea11387f41d19ed76a4dc96ba2cc6cfa3480bb802f2d183832377e3d",
         x86_64_linux: "8971e2e0fb9fb91250fdbf77aba143aa6bae31f6b2dbdfd7f31586f5fc3fc218"

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
