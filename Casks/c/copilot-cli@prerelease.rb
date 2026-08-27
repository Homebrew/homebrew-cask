cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-14"
  sha256 arm:          "faa3a6deae4cc6eda73c2ee72373cc45961ce0724158d492e8e466923b4e43fb",
         intel:        "b4bdd201346603c13be75a2cd8777bb03fa18af76cc954ddb9f844759b91e79d",
         arm64_linux:  "82a51b279445c44829930662864c49770615bf205902f4175077972e14143396",
         x86_64_linux: "455cf195987ee352b7234ac5fbf3bd2cc3d1f0868f9a8fdfeee573c5ef94dd38"

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
