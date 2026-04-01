cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.16-0"
  sha256 arm:          "e000166ee72299ef5cbfc78e94862c840455e068cdcfa39140874a9c2f9d64de",
         intel:        "9e989b16718adffeedbc6391d3b7107dca4173f063147ef4c594b4e085149172",
         arm64_linux:  "7280a49fec8343e538cfb7dc1c18430d017bceaa4fa71f3e862444067865a3c3",
         x86_64_linux: "0a55c18ef8a038c06c4846787213666944b896c97b478353db777067ba538ffb"

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
