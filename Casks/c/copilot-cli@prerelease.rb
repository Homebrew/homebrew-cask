cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.76-3"
  sha256 arm:          "df216eff7d2c9635cb27b598ca2bf06fcb103a36d58c9ed967c178382d247b9c",
         intel:        "cf8e8c4a63221290e2245bf5bb3845cef6299a1bec47c50b2c48f6c6c656ee71",
         arm64_linux:  "f5e22f6a1ce27ab43642e4c90f4dd16e86193ee62a17387867f751fb84aa42e2",
         x86_64_linux: "126dc26bf2ac083cdce6fdfc4de8d00073eb3886733c542f6b9994494fba3df2"

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
