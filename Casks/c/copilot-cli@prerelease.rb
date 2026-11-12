cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.110-2"
  sha256 arm:          "26fec850bc7224c877c3704aa33f31966c3eae1e3f409d502aea9a314d7c6a9b",
         intel:        "09df4fca0ecc08df954e3958f71bb3975320bb587ae4b5e8956fd1d95452bff1",
         arm64_linux:  "61dbb2ec7df1b32d601eeb9739d8b87e680795114d4296f3dc430964ed143dba",
         x86_64_linux: "b2fdfdf50c92f5fd120958c0ce58994bdd68e99da7a6db25263dbfad305d5072"

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
