cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.384"
  sha256 arm:          "87070b492721ddfddd7aaf8bda4a151a03223cd31c1992bc75d6b05e80ee00b0",
         intel:        "ef2e771c6af26848f33b57d84b565be1f855f531ed30bb08b72ab212c398af0c",
         arm64_linux:  "5df4b20314e9f93fd7ff9405e517e3a28ed4de72f8a5e9fbe8baa1d92904b641",
         x86_64_linux: "1fe7e01ae3e53fcfcd81dfcaf0af93592145d9ec8f0c94381a42633e327c74d2"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
