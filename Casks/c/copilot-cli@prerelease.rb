cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.66-1"
  sha256 arm:          "3c13015cc54e26e0f17487aa7f23d67f394e7bd171daf83fc1ba2febead204b8",
         intel:        "d1efc9536796065f69eb2fc9883244bb94c27a2bc677da846667f2daa44fa532",
         arm64_linux:  "b66622fc3ed2e23df974848c7ebee6f8a665d9686eb90d5f060d985a9497f81c",
         x86_64_linux: "675f8970902df6483d8b8daa670628b342bab7cf5daddf0fe0459d5ce313b751"

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
