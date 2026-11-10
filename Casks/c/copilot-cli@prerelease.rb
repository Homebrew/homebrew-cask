cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.109-1"
  sha256 arm:          "4554f8f9556eca531976a431e37c086439f1768996ebfe0597cfdffafb31acb0",
         intel:        "ae32bd99522a5431ee1e561a1f2842bafa597ae58e004bb13b27a75e25e0bd3a",
         arm64_linux:  "767a993b8bc7f9745c6f6cee6b5749b9b08b5f6c642aefecd65a49cbe54ed88e",
         x86_64_linux: "2b552b67967056d7a3df82fec8e1ade7afa55a67261ae9e857b347dac699b657"

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
