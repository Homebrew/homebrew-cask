cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.117-5"
  sha256 arm:          "846cd25d5ec4e84dfe8544c282936e7f44bd55781d18b1e833571b62401c1155",
         intel:        "dff46bd1600c995ddc5bfc6dfe4fe0ff81239b98a164d21e6b1f2b21c3643f70",
         arm64_linux:  "fbb3e046b315d490b23b1ae0a67f2abf83a765d2f49fd6fd0613e068b4c1e386",
         x86_64_linux: "8c23014764495459073c6fb6ee4907a39dbdc79da3a5323a7d0f5618e3352834"

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
