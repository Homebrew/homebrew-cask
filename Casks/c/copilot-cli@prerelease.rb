cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.97-3"
  sha256 arm:          "8195bd3554cd2455ab7b8594eace22479f379f59a4f005a37926a6c90808dcf4",
         intel:        "dd00bcca7dd70482e39ff3cdafed14c70a7f20870b9d684525dc088d02b802d6",
         arm64_linux:  "a5e45c6939870864999e71b44eb5945441da027a3e68baab790336eb9c1b64b9",
         x86_64_linux: "e5947c39f247f21f09d9afc90917acbfda8efc82df75ce9368239459e6a1a6b6"

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
