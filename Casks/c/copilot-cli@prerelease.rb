cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.116-5"
  sha256 arm:          "4a15fd4ab56caa73aac36cea70ddac0560939389e7264c35437b9e4db136f825",
         intel:        "dde86b1d4fb254e9b15b29b0f6f0b4290e25c4b9e751d3d7e6b13ef633c6c0a7",
         arm64_linux:  "4d1c58948efb8e8511ba3fe5253f0af7e9eb9d3b091e0629c168aea70747727d",
         x86_64_linux: "8287517e03adfe1493a5db06d314dc37a958f6b7f1520f5d8230e9275d6b43ed"

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
