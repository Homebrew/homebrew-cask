cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.412-2"
  sha256 arm:          "38144473450bbf1f6a52be774cda8afb4ac69ee998b29b238d4d888c43166d88",
         intel:        "c67c45250e88ca3a6e472d0b9b11076a8e6bd5011de205f96f78a03a40c03fb1",
         arm64_linux:  "9cadc856b618f7a07c9d13e64cf6af43efbb491053b50160fc3e5a9095fc9f54",
         x86_64_linux: "bb0fe809b996a81aef66b9665cea538e5d1548a22e87296f2f74c4cf336a7619"

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
