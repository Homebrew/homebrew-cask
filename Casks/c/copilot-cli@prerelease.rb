cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.90-0"
  sha256 arm:          "787efdadb710b508af30234c23de2a288cf2e3e03fafaf991e55d54d30e53f70",
         intel:        "fb8fbc37586a7ac07894b0d2ef44e63e2f2123ec7515638ad9d453aa9b45722a",
         arm64_linux:  "466099b7085ac64678410f6ae89bf37943ebc7abeaf9fbb16d7c20498c5008ae",
         x86_64_linux: "1bdbe9fb2b550a20e5dc46ecfa47e1f09dcaceda3fa06c17318b1fe8eb4943cf"

  on_macos do
    depends_on macos: :ventura
  end

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
