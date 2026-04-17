cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.32-0"
  sha256 arm:          "e7acb1cd9b88c47a21cd9406eb704b9039f7130150f4de9fb94bebafc0bcf1e2",
         intel:        "fd0f333d0224cd89ddc975861b40edf2b93708198a6f1fee09747d7393bc7a9e",
         arm64_linux:  "dd3f108ce51f002e483a3181a03dd8c948c63771b94b0431e8615748fc715724",
         x86_64_linux: "bdbb0b3e536596437ec22c197ef3186da80773844d0d0919b977859a672b2a72"

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
