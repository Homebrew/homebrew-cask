cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-11"
  sha256 arm:          "6d99497d5823213c323de519c3abba68ae9c242c88dc77c9019d2f9552edc1b9",
         intel:        "3179b2b8cf1d4bd74193edb3bc9ed1943b8d969184642904545dc722d057e922",
         arm64_linux:  "2fcaca8660479b496fc9e20a68e0ecba46f42af96215125c897f4d031530785c",
         x86_64_linux: "cc7ddf549ac84141e87945ea06b27bc96b5a1d5bc0fb5c9d4a2d41738ffd8777"

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

  zap trash: "~/.copilot"
end
