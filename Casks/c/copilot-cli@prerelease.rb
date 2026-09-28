cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89-6"
  sha256 arm:          "ac39a0fcdb019d9b9968cdddc78580e7e35a3dfd269191ef1e40c496606192b9",
         intel:        "25dabe89a49a444e908a8f819b73da6523fa382c8f51913c35037d6b39a3d623",
         arm64_linux:  "17ded653f72c89663ba51e57b0d4483934b105c8ddf9b29203498465b0baefec",
         x86_64_linux: "70525e741babe86cea97407ba148818bb8dce16769348eb9c8027a7d4a4607c9"

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
