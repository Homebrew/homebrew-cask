cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.92-0"
  sha256 arm:          "581e1a903bb783fe54c93b733a37cbeb126b78e5146c401e97a7053fb5695c8f",
         intel:        "a8272dd986873fa62d45ad4e0805d4dde29773b09c5a007e943b30486b11cd58",
         arm64_linux:  "40c3a973c8be03c9203162884a3262049e9de5c57cf6d72ce2f14d799bdf2ebd",
         x86_64_linux: "5f3c50d7d52b673e43ea1a03f25b7e489b80779a87c1723d3e22bd2158948783"

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
