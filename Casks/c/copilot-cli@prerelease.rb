cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.20-0"
  sha256 arm:          "c3284bef16294f6cf12ec8e596a15aa69d282889bcda83721fe8bd6c312b8b05",
         intel:        "e3c81031ad9bd80d4ce6d098bafc71497f037145e74ef5a1041732d2270622a9",
         arm64_linux:  "851777c61e3b3737eb69818373bb4721acf288230e63255054fbd8b30dfaf28e",
         x86_64_linux: "466c1a594621568eae8dc8a5748c88b89d5a3efa2d61455d27a7e54cf0969dc5"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
