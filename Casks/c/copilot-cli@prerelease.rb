cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.370-1"
  sha256 arm:          "0541ab7d4f10ae01e2d77993065704bcee9002020e35cc227aead55bfddc33fd",
         intel:        "a0d42950f8cc9318f456e32eb6b9874e9f79ad6bfc183c63b4fba0af3ae53f10",
         arm64_linux:  "24ba43eaaedf2f1fe349dda77d43ca2b6183d5af60b0ff5777e4c70f639f3023",
         x86_64_linux: "ca0ddeba6675bf49a278b6a681fc095ef44688de68d8b3afb6c97a01cac15891"

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
