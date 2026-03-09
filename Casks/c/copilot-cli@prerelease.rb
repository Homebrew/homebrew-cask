cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.3-2"
  sha256 arm:          "0b57f7890121c033f7cdcc174e56d3d303d1e91019b3ba3cb1f18a934003dbc1",
         intel:        "56330aa3b1131089ea25ffcd82709ba68ccc8bf54638e3cd91db8603ece39007",
         arm64_linux:  "7f269dbe9734b8c44ab9453a41686b4251a550febf7fae65f038c7f0c2ad4955",
         x86_64_linux: "4bff4ba304c56e69b6cb74148d52aa71c4e3ddfc95b1d8304752360e2fe0d472"

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
