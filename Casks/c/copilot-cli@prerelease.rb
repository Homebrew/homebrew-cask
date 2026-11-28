cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.118-2"
  sha256 arm:          "17fdef2419bdd7164d31e1749878b48574e13f8965c4079e4d340148c5886436",
         intel:        "b86ddc6dcc0fe74a6a52a4affe4fb93a5632855d10d806511695f0fb449ac19c",
         arm64_linux:  "efd80df2d0df7ae1219ae7719f213087d2f168d90f589cd61d2bc010ed495151",
         x86_64_linux: "95a23579dd15e312750308bc8814535a0a0d1e949d689accdf4d1155f2663127"

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
