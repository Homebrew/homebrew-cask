cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.87-0"
  sha256 arm:          "ea59dc917987efe08f0c6f1e58170d688f060adccb16e82488e55fa2b3739680",
         intel:        "e050efe6f57f3ac135d7973632a55006e72bf651391d402657bf8473d6638870",
         arm64_linux:  "6d59465e34e879ec51c6b3a6d2dbcdd49cf9f3d292ed92a05095cc1e5422a281",
         x86_64_linux: "0e5737b93e845215fb33aa01443ef21951737110c77d4003664d9f6f93110c36"

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
