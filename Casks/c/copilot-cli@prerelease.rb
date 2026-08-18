cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-1"
  sha256 arm:          "a5b1e42b224bc5bb9f3d4ec4801f25d2d37d66ce09a9326a8c81e0a9213b2de4",
         intel:        "87c04035710d264e7a74e86ca4c5745a9d4a86be262ccc6a95cec6002ce2cbb6",
         arm64_linux:  "38dc5c80b12d577e72830e9b19c433d27be7bb23cfc919b4823d35a704a60654",
         x86_64_linux: "a83ecb0a750d11fff6d8a818cea1e40abe00bea47dc44da83e9e320ecad2b988"

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
