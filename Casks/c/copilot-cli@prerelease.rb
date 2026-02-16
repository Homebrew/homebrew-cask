cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.411-0"
  sha256 arm:          "6f3d803b896a2189530831b9443bfb352b996710f9f5434156dbc03210ab25f4",
         intel:        "78c2fd29f7e8fa11630fc2118398b61fd203edfae8261d0d031a66e05261327b",
         arm64_linux:  "901e106e0de50436bf4a30141879dbad61ce6f7d59bda212dfe8843254545f9e",
         x86_64_linux: "9a74790531b7d871c7fc5ab99cc082995c9e78f2368256741730f7b3380b63e3"

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
