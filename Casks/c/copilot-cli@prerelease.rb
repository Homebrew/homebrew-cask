cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89-0"
  sha256 arm:          "bc00f19b037997088837a884bd00bb9ccce85c5eee6465d4c781d429a532b8ae",
         intel:        "6eec13c2aa4c8cd927506d9335c54e76ae98384f1a020e5c344e77ec8bd6d0f2",
         arm64_linux:  "a62d8f91c9f3df0ddee6308c1641c6673d83bb56a8ae16c5b2abcb86892a7b95",
         x86_64_linux: "ea4e9456e02323712e627d9b6e7a98afc49e3de6629b3dc6e26e5af02b30e2c9"

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
