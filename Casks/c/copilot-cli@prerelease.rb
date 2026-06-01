cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.57-5"
  sha256 arm:          "6b2729eebeb34b48403f8cd8634b883e9d0f859d3e2ed7fc156b4e3fd729467c",
         intel:        "2866142de65dde545992fbf16fce7f3a8533ba6dc3b1048faafaadbe9c2905fb",
         arm64_linux:  "434a5490832adf01e5e35fbeb7a6aa5ce3f02c984d1f4b1660812ff69736ea6d",
         x86_64_linux: "0394556006f09acae4952fdd8ce299fe1a5199c7fc40b94531155d16f509f514"

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
