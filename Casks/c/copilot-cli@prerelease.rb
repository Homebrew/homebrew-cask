cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.370-5"
  sha256 arm:          "7c08fad753e980b02ece7c728d2dfddcf9fade5212103c124544292ba1f3b3a9",
         intel:        "26356599a0e1df211c3c9850307f31e4d7cf9413df3cb7263a7fe77c1b75d558",
         arm64_linux:  "51b20f03f096076f94b60b98a86861d8a5af9013d62e6be24dde230cef82013b",
         x86_64_linux: "8cf03fd7bdc02f4371fffd5533a29ccaef209e682a5f16f6ed79e80542abc377"

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
