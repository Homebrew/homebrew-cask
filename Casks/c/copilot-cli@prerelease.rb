cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-5"
  sha256 arm:          "afb6622bafde838eb6889ae982fb56eb3411ffc6f54a4d3183ff212b3d6e0420",
         intel:        "de0436bfc5f30a3acbb6c5f56759e094217886353f5b926b6291f64a0407e04d",
         arm64_linux:  "76a705033e878fa53e10351af7606915961fd4f692b93923e2ce5a75e2f0f556",
         x86_64_linux: "89ddb68dbfcd4d974bde80344c2a539356c1a1a025dbf4120911cafb551689fa"

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
