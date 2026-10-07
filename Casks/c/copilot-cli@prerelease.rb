cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.94-1"
  sha256 arm:          "4b55c62522a14dea2e89e93b734d9af43cb86b38f8a3e051559adaba82522359",
         intel:        "8ab229612569ebef7c0b6353fab653260db49eecb7bda08d4654666f9e9ba49b",
         arm64_linux:  "15b36ccbc66e78149fc00fd422817640f53b2a6228824d697d9cb4a5aa9ef33e",
         x86_64_linux: "f71b6bdccbf7153be4f82480a269256b0c0bad61397c606f9347e61c67820ff7"

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
