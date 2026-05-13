cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.47-0"
  sha256 arm:          "b715cec3686b03560533a909ffc55ab484f8badf6111b6db8d2b9a2cca0e2629",
         intel:        "1d971d69343d3e9f3298870450fed292edd03be266a5fa494483bc30682ab9e7",
         arm64_linux:  "5949997ca4242143d650bb4d017d7ae84e1a98c2ed9448b4783b0085d54f940e",
         x86_64_linux: "2241a67d9cb683b27acdf176c2aee6317cc8a9797c34f6b433ed33c7c1eef685"

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

  zap trash: "~/.copilot"
end
