cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.74-1"
  sha256 arm:          "26daece4c513b4f54b0357672e82c3edcce01cf82ac3a544c77f03091d09e4a5",
         intel:        "d8dcf2b35a9dbe0eaa08fd3550565d6b8a046f4500fae34db3f4fb22e867c69c",
         arm64_linux:  "dbfb017693953a3062b8856039354c1a5846b17eaff36a982bdf42f0f2c50543",
         x86_64_linux: "59587bcd0fed0e386362fc3d24778dc5eddd7397b8eb4ca512a5197a0612b1b9"

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
