cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.96-0"
  sha256 arm:          "e85ca205f88f378ec381539610f2a3ed3f7f5472d0fd8291b4132a7db8be3aac",
         intel:        "9ff06949ff87df649e3b34060806572106d1242777b1334e3d1cb897d48acf82",
         arm64_linux:  "c62a30a234fdf77113cb70a33f6f7754124eb74cae7f984264b6238e9989fa23",
         x86_64_linux: "5e359272eaa7d2114a1cf898ee305c0e3cfec16e0caf8033352e4da95a1ae264"

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
