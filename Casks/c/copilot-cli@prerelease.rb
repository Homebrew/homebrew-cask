cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.66-2"
  sha256 arm:          "a634b78b775e468394119f3caa8c3880bc1f0b1dcf3d4493800819eb9494762e",
         intel:        "8337bf938bfd0243c9d977cd2be4a6f3948ee3bee189f70951fca6e0d3d863d3",
         arm64_linux:  "3154c17513dff7cad14b02ad8c89fd07f6127393f79b95b56099dee8a664084a",
         x86_64_linux: "7f62fe390b0186e34f1294f66dedede94418355651348ea29d4c1c5969ae3eeb"

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
