cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.103-0"
  sha256 arm:          "2d2285c3f85b76c0f9faebb7a4847e7a34b471d92870b3bdb97d8119f2269a2f",
         intel:        "131c8fa438148b7dd0dff7958be1c2bd9fbd94a18cfa4c152f488605bc26edbc",
         arm64_linux:  "18f36d2eb490ca43086529c9170665e0f7d60d84deecb92274476c7acec5c2b4",
         x86_64_linux: "af7fff7bb11c34c54ebe26540201a905e9a033db941b1c1477a0b78f725dbe00"

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
