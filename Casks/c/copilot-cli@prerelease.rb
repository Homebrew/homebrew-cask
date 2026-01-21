cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.389-0"
  sha256 arm:          "b9ad8e68800c1a745a5a08d6166071d14848e0dabf08f18360b21a6df5f02a38",
         intel:        "e2dace68406828562c5eb28ecefedd2aa7f67facfe8ecacdff0c8191d22b1d3e",
         arm64_linux:  "484fb3267a6b120959777fa236394a606c12a6745d96820b1a4675bb817dedf7",
         x86_64_linux: "096cac0f4136995af7ceec25b3f724d2e2c50646ed4554fd65898103c9f8c0a7"

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
