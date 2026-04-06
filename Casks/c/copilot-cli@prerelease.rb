cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.19-0"
  sha256 arm:          "f78263c9451b8afbe74f28fb00c184805075dec67e06bf6cb2f7b55ea0bd75c9",
         intel:        "6c070d8ca6d7267c3d37ad0df095d002a3849de421a2bf5722a51ad0bda027b7",
         arm64_linux:  "e98c197ce4173fa6f8bc541260a96bea8c3c6448603c4ceaebea2fcd45a9b355",
         x86_64_linux: "26c36298b9fdb2246974a6619e3922cfe9b8f41ac8b3bbaca9a97bbe73fcaa05"

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
