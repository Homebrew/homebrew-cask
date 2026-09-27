cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89-5"
  sha256 arm:          "704f52bc6ee5d2218bf2396b7dda9cf6040775eb56323a9df8e14a8e37d4352f",
         intel:        "fe079eeb3871ef5f4e96b660f06988592efa98c9e3fcde1e92bcf2bc7ce5491d",
         arm64_linux:  "d25b4143b95b90a2e64af30751341f61cf6668b3e580a82828e961f531706b57",
         x86_64_linux: "73079de6ed1e7c958297f912d1c2bebc30284b494e40871307d42869447c9d7d"

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
