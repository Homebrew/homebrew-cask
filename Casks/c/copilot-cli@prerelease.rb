cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.62-2"
  sha256 arm:          "6cc83f11d98e32a74e8ae45273972c1e00fa21017788cf2d01875c253d31e877",
         intel:        "25e4b8a1020faeb408fc4984b010446b4c82d2e7254a35bbf65f87a9a9d0dbba",
         arm64_linux:  "d2592130222ba8e0f98da90f45ff2ea8af461b67a514e1b0594f4157f6c3e90f",
         x86_64_linux: "672de10bcc9889d1d8fbc09f902b37e90703abd10be357da61b3f3242d6835ae"

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
