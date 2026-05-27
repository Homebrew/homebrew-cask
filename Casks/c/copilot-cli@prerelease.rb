cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55-5"
  sha256 arm:          "564b9465713d15f9e5a28596117b6638ab92d8b0fa055482c86c4c83ba523b9f",
         intel:        "55d3607b73eae7d625d890256aeb3c60409242006f8cad404b5a47d6de1831b2",
         arm64_linux:  "200ee9308a53f548e61e3b9ce6efba01fd4cf8a778513069427b4a67bb95fd47",
         x86_64_linux: "9bafd4c7653f15686131db6993f6a814da957d1b563c367af9b6e713674256f1"

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
