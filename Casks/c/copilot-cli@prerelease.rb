cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-6"
  sha256 arm:          "49d51f8288d611b7429447665e365e382f0562e4486f1c33f2dfb7c01636e287",
         intel:        "f97da13806794c0ff36c6288bda09ae8ea3008ea7b14ed4bdc77492b9127090c",
         arm64_linux:  "1b986198d90a781a4ef5ea633a502d55341f472596fe424943dd5a7beec09161",
         x86_64_linux: "6913103056be8e3316fc02631a45694c0f34434e12e55acfb832f16aa36e5e8d"

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
