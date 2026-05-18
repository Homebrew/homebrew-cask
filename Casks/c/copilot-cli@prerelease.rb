cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.49-6"
  sha256 arm:          "a32e1ac9c6cdd40a6316f723178997afd82fee562686225607b81de56f5ae2d7",
         intel:        "55738c402d72e625968373e3d4292ff9b544bc4b6adb275ad9e8c1f6b8e4bc6f",
         arm64_linux:  "223702f475c8fbeb7a78cb63520a86a1eb00025aadd581d058b03e0a8d4bbae3",
         x86_64_linux: "6f7c2e0954a86704bca82c4f22f53ccc1142d223709f0f02f0cb373dff19bc14"

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
