cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.92-4"
  sha256 arm:          "4beb6c5e94c5fd3243651e7c692a0ab051ebeb8ab0a3e48ce524450346f1d97c",
         intel:        "adc5493472334abfea5c3f108769d022b8ed98046c987301cd1d2d4550879df0",
         arm64_linux:  "b61e6f9691a923b8dc0c72ac7de7fa957e4a1520b2eb076a2a57a818f6a341a2",
         x86_64_linux: "716d9c70b11660043911be6c95cc300561535f26206a70eae6b0ad117f94cdae"

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
