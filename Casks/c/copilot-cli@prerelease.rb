cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-3"
  sha256 arm:          "e6075773b212418f9b40a9de704d549f9bde5e3d9ab222076134546e722ac1c1",
         intel:        "f86a832c5c3641f30de6e58cd44f3a4df84e745580077cfce8ca18294142a0e4",
         arm64_linux:  "ddae2b43e694c9910d1800a5ed3dffac540c9b4c4ec33658010e9dfe77e5fffa",
         x86_64_linux: "43ba865b974453e0f08ac2965106d237bb8d5b6ef7545742ed9c8362b1417944"

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
