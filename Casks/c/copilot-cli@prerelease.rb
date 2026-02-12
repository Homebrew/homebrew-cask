cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.408"
  sha256 arm:          "635b0ffbf468a089ea300c5be15ac9a6a47fb964a6c14c1e41b29ce6d56404bd",
         intel:        "d8b634e9803885d793dee1e4f654eee9eeaee687196d1bbe7ad65d53f9c905cc",
         arm64_linux:  "662f114f1cb1cf442a87a3a30f201f7259a139220bddb6f21d7d1e9d44b9dae8",
         x86_64_linux: "84524c07003d7cfd95619783c6efc086d41c3069693ca437ab646983a12cf9e8"

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
