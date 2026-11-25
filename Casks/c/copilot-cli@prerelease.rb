cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.116-2"
  sha256 arm:          "617618fe265a624addb03d3e7c2be3e98c1468faf775517eb95031986bbda6fc",
         intel:        "0472901fb277f7572ee44ef45efb0fa77034392be2f94032240e97e35d67c27c",
         arm64_linux:  "ff04b2ba853836bd692241cc59727239bcf4939150714ee5c33597f72020fe93",
         x86_64_linux: "e16f7ce0b67af7f2556271fc781dc8cd280fac654ed0dabd5913b4d3f0f941bd"

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
