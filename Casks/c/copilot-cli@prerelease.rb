cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.108-1"
  sha256 arm:          "577cb041ff6fa6291784b45e10f6cf3d18713c9e5fc11fa9fae2c1913c129fd3",
         intel:        "19fc2bd12ede3af32136ca37a5daaa724def935eb0324d9914c519b5e68295d1",
         arm64_linux:  "9405781848660f7712ac33f5fabda934b55d3698f3e87ce3b92f35567d9d252f",
         x86_64_linux: "61b9bfa69433477e81b74b45c4b225fc2b8f4fa78e9a3edf54e564c0dbdcd2e0"

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
