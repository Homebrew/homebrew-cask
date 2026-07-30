cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.77-0"
  sha256 arm:          "cd0901beabebbc19f0c186b8aedca8b825464172545ef3011baa9b3c1151dcf9",
         intel:        "51ad38b55515be6104bdc82a90e994ff44b8b8f714b2b6c03b28c62e876b1e9d",
         arm64_linux:  "03eaee5b39dc547a4ab412b095f758e61beebe9b6a499642c4efa25d172306de",
         x86_64_linux: "8d262595080f6dd34b7bc1345a9abf40342d78c4458afc17a2d3dc53255e667c"

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
