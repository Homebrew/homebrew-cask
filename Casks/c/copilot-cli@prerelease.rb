cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.386"
  sha256 arm:          "cacab567dd8943132dca9dba8696438fe21c055ab8c79c83a074d80730512fb8",
         intel:        "704343c870464744baa5fca4c171013df322482d1ab7b5eb8589dac6272e0dad",
         arm64_linux:  "437512e079221f5fc386c34ac7233ea14f1637eb77fae7c4f28ed5513ea95e5e",
         x86_64_linux: "280bd872c18b0312e207e667bd1e9f16d7e3b65adb35d10f3fef24acbb3bb7f0"

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
