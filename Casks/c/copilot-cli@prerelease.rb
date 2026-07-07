cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.69-3"
  sha256 arm:          "e2135f57d33b78e91a0d315cfec3c107046bbbc4a80612a4f68579220795707a",
         intel:        "a9ac5e52a448cafa3fd486eb94643dfc8e4d2a1f7e035eb3fa8bfb8e4b37b9e1",
         arm64_linux:  "56a659061ffce731cdb3cfc97abb25b71bfbc7a2cda2e57a06e856041c16037f",
         x86_64_linux: "de4e6bf3b95350333085c43680bcc342fee1a6315567718dbb87d1251c280e76"

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
