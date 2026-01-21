cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.389-1"
  sha256 arm:          "da8b8ad8eb8439d535f542468bdbb16fc4b13c196e8619baaa8da66d06be18eb",
         intel:        "444a27113a181cb67124b94615eed0a128a4b4383ed0586fcd72345de1b31200",
         arm64_linux:  "fc5824340f2ecd1c2ca64a4658de4aaa34b97deb40897049a017ffe0e998b58d",
         x86_64_linux: "d1e5be97c24beafc42b7d57233b207fec9ca83f61bcb934f9ba5ac5478d0153a"

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
