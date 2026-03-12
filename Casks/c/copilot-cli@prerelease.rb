cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.5-0"
  sha256 arm:          "54540ebda5dee76a71d14713d51960072c5a97a5ab089dd2c91e5b432c00aaa0",
         intel:        "363022dea10a4e78cd9aae7b9a12a9d5fe02f70be73af2fa245f7fe64b3f6325",
         arm64_linux:  "7e254528a10431a5f282b6462632bd0f8af4f237f40e63b334456db459cb32fe",
         x86_64_linux: "45795d4d410ec3a45ea355dd1076ec4d0cf779fff33c18aa6eac3941a496e1a0"

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
