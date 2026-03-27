cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.13-1"
  sha256 arm:          "9db30979ec4832e940bbc0527307d557e1a6c8186cd7f91992ca3de0c3f90a15",
         intel:        "b7cedaa42d3cbc7853075eab094d1891891fb312e34cb0a0e5ad3bf3b8ec7dae",
         arm64_linux:  "777a108139e06c7de50d802fd5876f646706c0418040a83fb55cfbb9d58e4cf0",
         x86_64_linux: "7b81d82f047c722256555364c8114f55fb5b6e7afe7d5e3b310faf928b059804"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
