cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.71-2"
  sha256 arm:          "177a1ca6f6128e8fc337471a06d09cf5e279672cff350938e39d19eabd2f4303",
         intel:        "04c8c324a881b49845e3572be56f423bf5a6347541955c1d7c0fc1e53a73892d",
         arm64_linux:  "fe28163be107e2fac6784ccfd7ff52689e39097b84daaeff0e9b05218596713c",
         x86_64_linux: "2290783439b7069e280e89bafa4535b264cc36f3895801c7064537f2f5e15652"

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
