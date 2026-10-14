cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.98-1"
  sha256 arm:          "4e9a666db55eff20231a91413b20b9cea0b14aed2b90e5caeda42df33062b725",
         intel:        "8a02b6b4f29e3417fa10a50f87b55dacf8a4448ea8309f9e58e59ad4c60feaf9",
         arm64_linux:  "83153a7f9c6e4a7de3bf479d26e6eb44a48fd5fe89c1597e02abc3da2d8e1085",
         x86_64_linux: "39489bcbd0e02ee6766de59a87f601eef6760f1a98f52c2e82661a88e9ad8639"

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
