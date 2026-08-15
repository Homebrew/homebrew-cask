cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-0"
  sha256 arm:          "19b742c4f6003004bb6256fb72e54ad008746eb8e4b716c33cda17eaefc864a5",
         intel:        "3b1854202551428f6696d8c5c8c91ce8579da20a4088aee439297a3cbbfeabb7",
         arm64_linux:  "46e835b12fae684038e7585c70c14bdcc65ed83130f7f09985ec5d09cc02e63e",
         x86_64_linux: "3277b50ace904d48507701fcf5c198618d7f72e1256c299e021721df397f8217"

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
