cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.370-6"
  sha256 arm:          "2a860e01b66429e305d25ec09e7ed1844c396d178e3a41e3e9abaf6622193316",
         intel:        "f278d703d5cd3829deaaf973532c5495457dac110be5e167447aeba54349d19e",
         arm64_linux:  "f8e3659f44ce5b0f19fca53a0b45db3d8f0d47f3fe33752a99f84069941c01af",
         x86_64_linux: "479bd8a9bebc4c6797003da11f2774fecca20307e4fe791a446922ff099c0f60"

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
