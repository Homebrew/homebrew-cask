cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.57-0"
  sha256 arm:          "8a964dde18a851cc80ca8fc7f6365a4d3b1a787b2905bd83555b30703437ba1a",
         intel:        "81da75cddf072c8799e1fa20e8b764f1fe4811f42963c30b5dda753cd484d844",
         arm64_linux:  "d7452e0e796b60f0c224209f61adf01305b71d1b98747c82b57b02d16b214794",
         x86_64_linux: "8499dbc4e52c441ef8a89f7244cc1b11942ba744a9405b625e1c25e82cc51e6f"

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
