cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.69-2"
  sha256 arm:          "10405d179805772cb2bd56fe8d6b6921ebbbcf10676551c655defb45752fbae1",
         intel:        "7dad3bc202da6daf5427068dc8fc8cdc7b0c4d99b9cc7245e7fdbace146dd133",
         arm64_linux:  "c2deb21d85e0def7d207c4f2ac289026337209cc8be7e58f1883b9ec6cca5577",
         x86_64_linux: "3fc32697cc50452ef8724dd342f588e8265e7f78ad358042b2ba138013ba1801"

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
