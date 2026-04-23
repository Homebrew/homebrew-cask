cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.35-5"
  sha256 arm:          "f229ad31aac0c58606999ca3e2838656a35d51406fc4a9a0f562e7c3fcaa2e59",
         intel:        "dee715f0614f226266328377e15d9d56ddd21b80a559a6953a0f3bbf8fecd65f",
         arm64_linux:  "aaae4dd2dd766384abb64978a9c52f45318d5e26c44a925421036634773b4881",
         x86_64_linux: "cb12b8956028ed2e1a7ea0a97696d44c7defb945ae9b9b578037625e10c2a6df"

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
