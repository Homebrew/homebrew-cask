cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.22-0"
  sha256 arm:          "d61ccf051803f9a690c7dc4651dcd06a0bcd816a09eaafc0497a8313a963845c",
         intel:        "3eab7aa722f9e3f8a311438e35ba351ae9d373eab5306b9dcf8db5270977c49f",
         arm64_linux:  "43ad7973660b9d777d80b6b2e7e139dd7da07fe91383ff438860652523f92d42",
         x86_64_linux: "8af1ec75f44c5312b28940fe128069b7468a08afa9cc41dc8df81c8f5c70ee37"

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
