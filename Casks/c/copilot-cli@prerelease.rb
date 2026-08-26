cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-12"
  sha256 arm:          "d519239f25a4d5c88e0a47489bd6bfe3b293944aa14a116d6f0929a92cc805c4",
         intel:        "01773e9383333deae3630e8af7cf906c22ce65483786f3f9a89bc540a54aed47",
         arm64_linux:  "519c29fde1ec4b3c7f2db2f6b843a0f67a80213848b11182879ab037dacd22fb",
         x86_64_linux: "da172de2653a0d41792cbab5c9bddac25adc6113c68d05a2a69de3ddcea1b82f"

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
