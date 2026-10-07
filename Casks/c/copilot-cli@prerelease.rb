cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.94-0"
  sha256 arm:          "555358253db50e626261427d0f1e663b039d9ef2edf511e213363b03d4ac682e",
         intel:        "36e12af75ff1cd0e424c738524edd6494acc1eb703028973af3109396c4875d2",
         arm64_linux:  "234c09ec53be154e09026cc5567f481786e5e4a3815108fe4db974bb59059b2f",
         x86_64_linux: "4fb64b339562f84e423f4929a4072c6afac0ca1910704fe9073591e6d889f22f"

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
