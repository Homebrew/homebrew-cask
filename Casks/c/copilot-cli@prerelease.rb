cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.82-0"
  sha256 arm:          "2eb89389784c1bb3a56a5611782c7afd99441b8db1db1122bef395c7e57ee414",
         intel:        "90a58c5001808ed8c5e74722a4d879847c09746a57eedf2f5e54fe5cb68d9a8d",
         arm64_linux:  "dc273e6e2242f86b8e0763984ab3b312541156eb4a27c51cba02e97c5443f8bb",
         x86_64_linux: "2269c5b0ff61390a28f4197ac6d1f86c371745220171ae0dbd99a86e3750c112"

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
