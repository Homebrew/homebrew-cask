cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.407-0"
  sha256 arm:          "4f24192559d76b826cc637f56b7b585ea4315d8bd7d16fac30f10d97210cc9bf",
         intel:        "2248e9dfb205d1ed52f19162cd7004e17d8964f4b419584d64b176c903c49411",
         arm64_linux:  "c815525e8214b04a91b430e5ea455cfe29554a443ca176a612aa1499e7c5c04b",
         x86_64_linux: "9cb7cd7deda6f610314dcfa2fae3064ccf7845c41ac592bbc6469dc39a0f2423"

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
