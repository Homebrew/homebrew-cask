cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.57-1"
  sha256 arm:          "89289fa9c238bf1f4bb33015ca6bff7677011b1067dacd46d31d298fabdabc58",
         intel:        "6f06efc84fa0bac24229cee7e6cddec416042b4e171b26934ec96f16220f648d",
         arm64_linux:  "6af24aceea72dfff30d1cba5c0386f76b7f9c71177b6d1b96c6cd313b88d43d4",
         x86_64_linux: "6b6b68e71d8d0a47e555ae5e230722bb8932091f5a4c14a373ddd8b48cbb3dd9"

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
