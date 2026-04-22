cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.35-3"
  sha256 arm:          "ba47c8f2cc5953cc335dc7b055f8559f4a1f21167a9d5bb7c0ec25b863cfc4d6",
         intel:        "576504b7c10479c076894914cef4e8c3f162a1c51624d00d312c0aa65dbcd2de",
         arm64_linux:  "1a530c91d4e773af195ccd0cac2980d4ebec7b3f41d6c758d30f09e7af1523b8",
         x86_64_linux: "093662fd2a0857ec69e38ac1eea82e02582f74c7dbb50f382752cb4f840aa5d8"

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
