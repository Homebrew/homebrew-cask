cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.400-0"
  sha256 arm:          "33531f23ce4d9653225044da6c49768caae167ffbbf9e73ad3f1ea058346d183",
         intel:        "09f6d0e16d8bc49e7a588ff648e3fdf0ece2f3ab0698dbbe4f6d5e54769f2918",
         arm64_linux:  "f385b1f4b0e9d8f609a2f4f3130178cdcac2742d577a8d8ffd93d46778e0d53d",
         x86_64_linux: "58d8d53a93cba61bcd627d0b6e39ecbf36749a7e5a2a882d4323b8f29fec98d7"

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
