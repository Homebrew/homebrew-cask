cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.99-1"
  sha256 arm:          "cf858d11e5cde9f3c0334a731c29dfa7639dbc7870fdfe218aeb95140996c0cc",
         intel:        "2bbbf284f22f1ad4ad1f20da139910e0b5e17a0151a5b56affaba28d8254ea1d",
         arm64_linux:  "e9d67f27a040b4483462257b1733edc46795a6e717b7013262ef10b40e42dfef",
         x86_64_linux: "67a1dcb584bf6ce26700cb00fa473c588be3cebbe28b770c83a59ba759c7aa02"

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
