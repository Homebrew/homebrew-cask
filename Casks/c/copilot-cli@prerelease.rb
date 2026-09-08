cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-2"
  sha256 arm:          "649c5e3fd731d249b3b6b3ac1522035c25f3733dfa29b11ad3a3f8ece684ddbb",
         intel:        "d094ed8d0e3f5f2741921f01c4f12d8180da8cce79fd72361450fd7e51ca66b2",
         arm64_linux:  "226dec2e74c18a8f0f27ada4b3f61e4005a944d93b5e5ad6ded571476603e9e5",
         x86_64_linux: "81e2fc2848da6207fd0874a2072ccd0b9a179c9f0d939952b0cff504d96ff514"

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
