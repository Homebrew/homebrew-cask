cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.35-2"
  sha256 arm:          "bbbdd599ee7187cad57abfae92551d52d9190c2507517032f957c862914c55b0",
         intel:        "0680445245c7c30c4a8c4678626cfff244290dc6c44d885ee160efc10ebafae4",
         arm64_linux:  "f4ca28917286bb613b718942954983ca40e2f2b122204f2a4c8c79c8efa32710",
         x86_64_linux: "410e3aad65fa81ba27fe1d69be9f042a657d86985ce5f0c68398d250398ceaa8"

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
