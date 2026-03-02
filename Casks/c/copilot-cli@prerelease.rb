cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.421-0"
  sha256 arm:          "d02afbf7b9453e1313a1b9533c77b8735171e399a9b07187b5f2e6a175d0dced",
         intel:        "a1917435a897354c37c08919a00fe3f2126a8f73ffbc8ef6307e96093f709952",
         arm64_linux:  "ef9bb50075e9a6c85126634db00110003f76c3cfd24f266bb32303b37e34b8a7",
         x86_64_linux: "c2ca003dbb2d71f2f9988a73737e4257e893e959e8f75f3e5e922daf3e9c1bef"

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
