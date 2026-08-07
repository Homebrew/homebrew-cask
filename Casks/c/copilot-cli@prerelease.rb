cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-6"
  sha256 arm:          "0fb52cfa901efd4d2db772c610cffdd723bdc878652545586608d096029c6656",
         intel:        "f650be3f6ec29cc7023f47f95dce997c8c094f646aa20ddcd1e8ae718a9f8bc2",
         arm64_linux:  "627c1b00e27be6eb00a3c1244a0f6e7f0aa0a4747ae22dc1ab52b3dc0f81db19",
         x86_64_linux: "98a01a78bb7b40fdeb3a868b1beb940ffefebd35857f6a9f5822920b7b642eb2"

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
