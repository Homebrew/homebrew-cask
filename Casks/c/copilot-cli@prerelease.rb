cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.52-0"
  sha256 arm:          "1e55cc559fa909fde18cee03137d3ef91aa30f0a4ba14be1d9eb399782cbeb26",
         intel:        "40042843afc34ae6583109646b0aeba5c29545afa0454ffe2bcf3648c37fe2c8",
         arm64_linux:  "1fc36291b580b0900afaaba0b6cf245c29a318a29867c311dc9c1d09aa79dae5",
         x86_64_linux: "ba76c6c2d80e9cdccec299be71c2d8ae54133f50e31b26b735f639acd6957ecc"

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
