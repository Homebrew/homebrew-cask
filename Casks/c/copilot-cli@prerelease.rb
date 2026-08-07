cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-8"
  sha256 arm:          "d56521fc8c22da9182b87e7bf86bd4c6cd3e94afb5511e7faa72466b4a798ea3",
         intel:        "0cecc647c8a065ce21a1e3244a46e13bc18e2cd5d74a7e5ca6ec7d79bf2a6b2b",
         arm64_linux:  "af1ef3e7ec12b554561bd1f17bc360b108c37ba8ba2217ffbb7fb0102b622294",
         x86_64_linux: "a5e07c4ef59f617dbe39af3ababbd5479cd25a5d2959b314901554f704a0c52c"

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
