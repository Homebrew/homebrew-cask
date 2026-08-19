cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-2"
  sha256 arm:          "1b268f316d621b66e80b25a2214e75ba309913d19255c40745309f158c44250c",
         intel:        "2a53d58d54f80dc6a350c856ddf8abf041e354b878be1802ac2a568356bfc377",
         arm64_linux:  "d7fd6d1b3a5497bf8e947525fe236ad2a611d55a0230319c94f254116b36ba3d",
         x86_64_linux: "2956f2261236c1ae22cd69c8160bb9708a788bf065ff683ced8d531279a020e9"

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
