cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-1"
  sha256 arm:          "2827f711e49d1865488fd406af24363a2fae5439a74b58e6845a91f49d412c63",
         intel:        "9e500ad920d29d7c4dacb663341a857dd11eedbd7a2ccd0ae2126558e87c72cd",
         arm64_linux:  "bdcdc66c459552731f68b6bd2d7231e90b1cb156816947e833b8dc96d7d84917",
         x86_64_linux: "5cd63a4b667182b227e18708b66e55bc62ba7f92a9ce9dff5fdb41979ce3d94c"

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
