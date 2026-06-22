cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.64-1"
  sha256 arm:          "a76c79cef0743d0a28757e805468f5bac25366b59502f151e4ad421bb3585af0",
         intel:        "701640f2afde82e1d5749d7a8c12bf396b6bd2b7b8cfd752d93f040499d3abba",
         arm64_linux:  "b5ddab1d2cc984f42bf9da2153d4ffc7e2b5829daa1c12177f16001945a20513",
         x86_64_linux: "000d67a667125a498d9acd0101dabb599ca27e9c01ebeb0c6968297827df4c07"

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
