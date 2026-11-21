cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-5"
  sha256 arm:          "1a723db58fafb12a2f729c4569ec5e29c9aeb51d8327c9e6a03d44fa226e80bb",
         intel:        "7343ffd564a1d593b16516c237a2b05f3943832ed95f4babea7179cb7253712b",
         arm64_linux:  "9ec2bd32e8466a5ad825a185bf8986f1534b4c9724d089604a0d44f8a28d50a0",
         x86_64_linux: "9b81fdea7905e64adc4062ac7fa2074dda056a3e833b382ebcf8ac20177cffdc"

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
