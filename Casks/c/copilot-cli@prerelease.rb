cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.95-3"
  sha256 arm:          "dd0de600f7ea840939a3d1d2501dbcbc6b4f5a560494978208e078d80410506f",
         intel:        "216ae8fe01ff8ccebfbdbd644d6fd263f8ad02667fb011ddc66db637f1526e2f",
         arm64_linux:  "e17323cd60c50ce29ffa330a64dbdc45cadeb7d4d62012a3c910bb67540c73ba",
         x86_64_linux: "a4a5ac45742e57789eeb091a7a77e8752bc3cc5239a4ab15dac54e9315b65822"

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
