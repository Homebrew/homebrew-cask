cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.51-2"
  sha256 arm:          "eeef6eaaf46148f2018c9197918a8f68636c06a6b32475105dbf551e6df6dfe9",
         intel:        "30bc006eee8a310c6692b9d5424377094a2d6c7bf60175d3a4194fa5165aca1e",
         arm64_linux:  "d7ee9824db05cab14a647181ec63abc15b9c972f41ed76dff50f7e4951d0afe7",
         x86_64_linux: "4ad0c6917fb8d0c0b3297eac55e68c3b74dc9353f787311d008f4663d26cb379"

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
