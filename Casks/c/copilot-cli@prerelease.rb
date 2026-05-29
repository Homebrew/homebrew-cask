cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.56-2"
  sha256 arm:          "313b8c61b42af28e38e7a38683a70b0b544318aee1ab3e344438ace8d6647af9",
         intel:        "d2c05a79c4c210008b069ad76b2c4ac024b9ed8dea2c417bc8c21d4bcff1fb05",
         arm64_linux:  "2399c54c88ae35908d307d42ac6916efd33aace4839184e5bd02599b2825a409",
         x86_64_linux: "5ec4a41b5e98805cb7530d47d65d681d73e435288cf1bc2d49a256741ad1ba94"

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
