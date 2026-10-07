cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.93-3"
  sha256 arm:          "caaf3329ef69d8e2e0e37410625952f9c27e5bfba7186a2782861a7d82a0d827",
         intel:        "8904b559e05af7f36efa2bd442da5ed2864c0a3f6a5c6ef112c323ab52f7a6a7",
         arm64_linux:  "09a7d8ff5db5142a3fa9e3abf91f2938b8148be1ae547ae46b75604650a70d1d",
         x86_64_linux: "860bf0aae401a558405ffd84ba42f59091893e1588c402f9b3a5fcbab8b0dc14"

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
