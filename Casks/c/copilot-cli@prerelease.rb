cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.94-2"
  sha256 arm:          "69b6a04fe76e69a08213600093c1711ffef0620276dbb6bffa4452c0528fa145",
         intel:        "8e38ca9c27bc0f57a09e6c5f7629fa57fb27e9d5776bbc95ef20f948f972c9d4",
         arm64_linux:  "72a89d1b4bec9aa8822703939eab9f048d7435b7e1a6a992f8158d47d21fa839",
         x86_64_linux: "bd4923bc1ce303f75dccbba3b0a0b8d9a79f69a3b24d57a42ab06e3af7c2bf51"

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
