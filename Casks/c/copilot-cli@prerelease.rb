cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-9"
  sha256 arm:          "42d2b806330100ac12d0d352e21174189321c5c40230c6e1a2e8d34dcdedd843",
         intel:        "892dface1f3f49bdfeb229c0f84279eefe164df0d0cdf4e9033f0ea7e08bae0e",
         arm64_linux:  "c45ede8af029c2ff9b6f24ed76b622280417d45f9540f4c53387b74a5fb5febe",
         x86_64_linux: "be49dfef7bea785c7cd1a7d784b44235d9b35dbe98c32ec0c294cda820c2fe72"

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
