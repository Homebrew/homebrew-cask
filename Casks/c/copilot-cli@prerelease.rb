cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-9"
  sha256 arm:          "ef2dd31d3f55110a1ad07b8e4a12456ae10452c560c9a29dc3487ecf3561cd1c",
         intel:        "3e284e949f2bc9ba9ccf0443d4c5519ec1c3bf1c365b59f63905163162f972e9",
         arm64_linux:  "3e941413e50ac7e80fe509fee8bb96102375820b0b885110ea58cc97154c0b6d",
         x86_64_linux: "08151aaa788a1879361e150b3b83ac5d53a87a520244abff512d02f7797ce0c2"

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
