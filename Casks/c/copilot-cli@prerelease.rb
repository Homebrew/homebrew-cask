cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.78-0"
  sha256 arm:          "ba53b7dc3675c1f69928cde954335b0ad96155b4d3271b30957f3576875a8d75",
         intel:        "5e669e2d6df551ada005c1f856675cbc27ed9f89933fde0d36d7a87e32023134",
         arm64_linux:  "8b6766da1dbb094a9e68432b65ee89b98f7cff0b4639b7c584406449f2e83bb4",
         x86_64_linux: "9a144982080a460e735a0636879663baefb92624077e6a81b049d39fc632745d"

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

  zap trash: "~/.copilot"
end
