cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.117-2"
  sha256 arm:          "824e234c8188ca350b973306388aa15e31697ef6083e733e0d39327b2b55109d",
         intel:        "9efa1449fe79a1f461f43ab6136bdc0a730b1e1ff5f5168aab584bf2ab884c56",
         arm64_linux:  "0d00f4647a8dc75726862073854e953d8f14c5ee0bb24bd539aec956897d15de",
         x86_64_linux: "994cca4dd6f70a4ddfaf764e3b5e08c4519d581f42c56ee9ab04df3208e21434"

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
