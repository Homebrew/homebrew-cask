cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.91-0"
  sha256 arm:          "cc70effdb4b0212b043769a2952224bee4d6b2019e783b3c3a52fc55b1507b64",
         intel:        "2f0ad36743b2032b9ce886d3128ce72b869bae9e14cb773c17462e71f5303915",
         arm64_linux:  "c383c64856ff5aac6dc396f5471a2049e4ac8d13bfb145b9f12630466d9620b2",
         x86_64_linux: "3354813e2692ea52e1118aae03013aea305d1eec815db4d4d47c9b0ab84ed654"

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
