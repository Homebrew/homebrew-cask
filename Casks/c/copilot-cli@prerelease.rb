cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.413-0"
  sha256 arm:          "d3439529763e100116be8a847b4ea9b6036ce863492a3a2239faf3a1e0c405a4",
         intel:        "45b175692ee544eaad8763d1cce07eaed0623c3ce5af56ce1d50d3871e1cc6d3",
         arm64_linux:  "061b6950aca2ba4504304429003c593c1742472edca3816aefac02dfc7119139",
         x86_64_linux: "ed4ca4dc62da2b220c4da99e318035f8dc84851e134328bc5c01dbb982d47051"

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
