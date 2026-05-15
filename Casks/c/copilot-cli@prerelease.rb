cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.49-1"
  sha256 arm:          "5aa85e35e7f0c54f2e7f69278406f1820700c5885b91c6cef756b8837ebaae5b",
         intel:        "6c510ade867d56be2d9fc125548d47a45dc7fa000937e561cc87467132865037",
         arm64_linux:  "0811c56f83bcf463cca6736aa62a6faac1145a7b8aa83dc43f85fc8061971c4b",
         x86_64_linux: "49f14e7782e7ab520136d040b4f3571fe7f2914ddf5c579fd5890110c6d8e2a0"

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

  binary "copilot"

  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
