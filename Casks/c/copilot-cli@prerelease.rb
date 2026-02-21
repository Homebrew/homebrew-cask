cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.414"
  sha256 arm:          "f51400136a8085f4a041fa5b09e51ffd63116218e2321dff6611cc6a5317179b",
         intel:        "3f15e4fc873fbd2302dd090c6f316180f43050dbd9d7b1e5ab576c34a0624784",
         arm64_linux:  "2805398cc82c762afa7fbf487b8b7c46accc2fa059a593d7f45e951c9b81831e",
         x86_64_linux: "615ab942b968fdd3cc0609d974a4f9c00b485b8bad30fb3252390a90f59bf42a"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
